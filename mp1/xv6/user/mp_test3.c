#include "kernel/types.h"
#include "user/user.h"
#include "user/threads.h"

#define NULL 0

void f14(void *arg) {
    int i = 285;
    
    while(1) {
        printf("thread 14: %d\n", i++);
        if (i == 289)
            thread_exit();
        thread_yield();
    }
}

void f13(void *arg) {
    int i = 813;
    
    while(1) {
        printf("thread 13: %d\n", i++);
        if (i == 816)
            thread_exit();
        thread_yield();
    }
}

void f12(void *arg) {
    int i = 341;
    
    while(1) {
        printf("thread 12: %d\n", i++);
        if (i == 350)
            thread_exit();
        thread_yield();
    }
}

void f11(void *arg) {
    int i = 653;
    
    while(1) {
        printf("thread 11: %d\n", i++);
        if (i == 658)
            thread_exit();
        thread_yield();
    }
}

void f10(void *arg) {
    int i = 948;
    
    while(1) {
        printf("thread 10: %d\n", i++);
        if (i == 949)
            thread_exit();
        thread_yield();
    }
}

void f9(void *arg) {
    int i = 550;
    
    while(1) {
        printf("thread 9: %d\n", i++);
        if (i == 559)
            thread_exit();
        thread_yield();
    }
}

void f8(void *arg) {
    int i = 697;
    
    while(1) {
        printf("thread 8: %d\n", i++);
        if (i == 698)
            thread_exit();
        thread_yield();
    }
}

void f7(void *arg) {
    int i = 372;
    
    while(1) {
        printf("thread 7: %d\n", i++);
        if (i == 381)
            thread_exit();
        thread_yield();
    }
}

void f6(void *arg) {
    int i = 186;
    struct thread *t13 = thread_create(f13, NULL);
    thread_add_runqueue(t13);
    struct thread *t14 = thread_create(f14, NULL);
    thread_add_runqueue(t14);
    
    while(1) {
        printf("thread 6: %d\n", i++);
        if (i == 191)
            thread_exit();
        thread_yield();
    }
}

void f5(void *arg) {
    int i = 541;
    struct thread *t11 = thread_create(f11, NULL);
    thread_add_runqueue(t11);
    struct thread *t12 = thread_create(f12, NULL);
    thread_add_runqueue(t12);
    
    while(1) {
        printf("thread 5: %d\n", i++);
        if (i == 550)
            thread_exit();
        thread_yield();
    }
}

void f4(void *arg) {
    int i = 2;
    struct thread *t9 = thread_create(f9, NULL);
    thread_add_runqueue(t9);
    struct thread *t10 = thread_create(f10, NULL);
    thread_add_runqueue(t10);
    
    while(1) {
        printf("thread 4: %d\n", i++);
        if (i == 4)
            thread_exit();
        thread_yield();
    }
}

void f3(void *arg) {
    int i = 989;
    struct thread *t7 = thread_create(f7, NULL);
    thread_add_runqueue(t7);
    struct thread *t8 = thread_create(f8, NULL);
    thread_add_runqueue(t8);
    
    while(1) {
        printf("thread 3: %d\n", i++);
        if (i == 999)
            thread_exit();
        thread_yield();
    }
}

void f2(void *arg) {
    int i = 987;
    struct thread *t5 = thread_create(f5, NULL);
    thread_add_runqueue(t5);
    struct thread *t6 = thread_create(f6, NULL);
    thread_add_runqueue(t6);
    
    while(1) {
        printf("thread 2: %d\n", i++);
        if (i == 995)
            thread_exit();
        thread_yield();
    }
}

void f1(void *arg) {
    int i = 685;
    struct thread *t3 = thread_create(f3, NULL);
    thread_add_runqueue(t3);
    struct thread *t4 = thread_create(f4, NULL);
    thread_add_runqueue(t4);
    
    while(1) {
        printf("thread 1: %d\n", i++);
        if (i == 694)
            thread_exit();
        thread_yield();
    }
}

void f0(void *arg) {
    int i = 141;
    struct thread *t1 = thread_create(f1, NULL);
    thread_add_runqueue(t1);
    struct thread *t2 = thread_create(f2, NULL);
    thread_add_runqueue(t2);
    
    while(1) {
        printf("thread 0: %d\n", i++);
        if (i == 146)
            thread_exit();
        thread_yield();
    }
}

int main(int argc, char **argv) {
    printf("mp_test3\n");
    struct thread *t0 = thread_create(f0, NULL);
    thread_add_runqueue(t0);
    thread_start_threading();
    printf("\nexited\n");
    exit(0);
}
