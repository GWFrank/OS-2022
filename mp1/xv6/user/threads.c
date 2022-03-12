#include "kernel/types.h"
#include "user/setjmp.h"
#include "user/threads.h"
#include "user/user.h"
#define NULL 0

static struct thread* current_thread = NULL;
static struct thread* root_thread = NULL;
static int id = 1;
static jmp_buf env_st;
// static jmp_buf env_tmp;
// TODO: necessary declares, if any

struct thread *thread_create(void (*f)(void *), void *arg) {
    struct thread *t = (struct thread*) malloc(sizeof(struct thread));
    //unsigned long stack_p = 0;
    unsigned long new_stack_p;
    unsigned long new_stack;
    new_stack = (unsigned long) malloc(sizeof(unsigned long)*0x100);
    new_stack_p = new_stack +0x100*8-0x2*8;
    t->fp = f;
    t->arg = arg;
    t->ID  = id;
    t->buf_set = 0;
    t->stack = (void*) new_stack;
    t->stack_p = (void*) new_stack_p;
    id++;
    return t;
}

void thread_add_runqueue(struct thread *t) {
    if (current_thread == NULL) { // to root
        t->left = NULL;
        t->right = NULL;
        t->parent = NULL;
        current_thread = t;
        root_thread = t;
    } else {
        if (current_thread->left == NULL) { // to left child
            t->left = NULL;
            t->right = NULL;
            t->parent = current_thread;
            current_thread->left = t;
        } else if (current_thread->right == NULL) { // to right child
            t->left = NULL;
            t->right = NULL;
            t->parent = current_thread;
            current_thread->right = t;
        } else {
            free(t->stack);
            free(t);
        }
    }
}

// tunnel to thread
void thread_yield(void) {
    if (setjmp(current_thread->env) == 0) { // from working thread
        schedule();
        dispatch();
    } else { // from dispatch
        return;
    }
}

// enter context of current_thread
void dispatch(void) {
    if (current_thread->buf_set == 0) { // first run
        if (setjmp(current_thread->env) == 0) { // hack the stack pointer
            current_thread->env->sp = (unsigned long) current_thread->stack_p;
            current_thread->buf_set = 1;
            longjmp(current_thread->env, 1);
        } else {
            current_thread->fp(current_thread->arg);
            thread_exit(); // if the function returns
        }
    } else { // later runs
        longjmp(current_thread->env, 1);
    }
}

// determine next value of current_thread
void schedule(void) {
    if (current_thread->left != NULL) {
        current_thread = current_thread->left;
    } else if (current_thread->right != NULL) {
        current_thread = current_thread->right;
    } else {
        while (1) {
            if (current_thread == root_thread)
                break;
            
            if (current_thread == current_thread->parent->left
                  && current_thread->parent->right != NULL) { // right sibling exist
                current_thread = current_thread->parent->right;
                break;
            } else { // backtrack one level
                current_thread = current_thread->parent;
            }
        }
    }
}

void thread_exit(void) {
    struct thread* exiting = current_thread;
    if (exiting == root_thread
          && exiting->left == NULL
          && exiting->right == NULL) { // exiting last thread
        free(exiting->stack);
        free(exiting);
        current_thread = NULL;
        root_thread = NULL;
        longjmp(env_st, 1);
    } else {
        // update current_thread
        schedule();
        // modify thread tree & free unused thread
        if (exiting->left == NULL 
              && exiting->right == NULL) { // leaf
            // cut exiting from its parent
            if (exiting == exiting->parent->left)
                exiting->parent->left = NULL;
            else
                exiting->parent->right = NULL;
            free(exiting->stack);
            free(exiting);
        } else { // non-leaf
            // find right most leaf (last in preorder traversal) as replacement
            struct thread* next = exiting;
            while (next->right != NULL || next->left != NULL) {
                if (next->right != NULL) // right first
                    next = next->right;
                else
                    next = next->left;
            }
            // printf("existing: %d, replaced with %d\n", exiting->ID, next->ID);
            // cut next from its parent
            if (next == next->parent->left)
                next->parent->left = NULL;
            else
                next->parent->right = NULL;
            // cut exiting from its parent and connect next
            if (exiting->parent != NULL) {
                if (exiting == exiting->parent->left)
                    exiting->parent->left = next;
                else
                    exiting->parent->right = next;
            }
            // cut exiting from its children and connect next
            if (exiting->left != NULL)
                exiting->left->parent = next;
            if (exiting->right != NULL)
                exiting->right->parent = next;
            // update next's info
            next->parent = exiting->parent;
            next->left = exiting->left;
            next->right = exiting->right;
            // update root if needed
            if (exiting == root_thread)
                root_thread = next;
            free(exiting->stack);
            free(exiting);
        }
        // run current_thread
        dispatch();
    }
}

void thread_start_threading(void) {
    if(setjmp(env_st) == 0) {
        schedule();
        dispatch();
    } else {
        return;
    }
}
