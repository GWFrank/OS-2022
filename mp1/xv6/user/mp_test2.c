#include "kernel/types.h"
#include "user/user.h"
#include "user/threads.h"

#define NULL 0

void f10(void *arg) {
    int i = 713;
    
    while(1) {
        printf("thread 10: %d\n", i++);
        if (i == 717)
            thread_exit();
        thread_yield();
    }
}

void f9(void *arg) {
    int i = 962;
    
    while(1) {
        printf("thread 9: %d\n", i++);
        if (i == 970)
            thread_exit();
        thread_yield();
    }
}

void f8(void *arg) {
    int i = 945;
    
    while(1) {
        printf("thread 8: %d\n", i++);
        if (i == 952)
            thread_exit();
        thread_yield();
    }
}

void f7(void *arg) {
    int i = 984;
    
    while(1) {
        printf("thread 7: %d\n", i++);
        if (i == 989)
            thread_exit();
        thread_yield();
    }
}

void f6(void *arg) {
    int i = 933;
    
    while(1) {
        printf("thread 6: %d\n", i++);
        if (i == 934)
            thread_exit();
        thread_yield();
    }
}

void f5(void *arg) {
    int i = 998;
    struct thread *t9 = thread_create(f9, NULL);
    thread_add_runqueue(t9);
    struct thread *t10 = thread_create(f10, NULL);
    thread_add_runqueue(t10);
    
    while(1) {
        printf("thread 5: %d\n", i++);
        if (i == 1004)
            thread_exit();
        thread_yield();
    }
}

void f4(void *arg) {
    int i = 940;
    struct thread *t7 = thread_create(f7, NULL);
    thread_add_runqueue(t7);
    struct thread *t8 = thread_create(f8, NULL);
    thread_add_runqueue(t8);
    
    while(1) {
        printf("thread 4: %d\n", i++);
        if (i == 942)
            thread_exit();
        thread_yield();
    }
}

void f3(void *arg) {
    int i = 829;
    
    while(1) {
        printf("thread 3: %d\n", i++);
        if (i == 830)
            thread_exit();
        thread_yield();
    }
}

void f2(void *arg) {
    int i = 559;
    struct thread *t5 = thread_create(f5, NULL);
    thread_add_runqueue(t5);
    struct thread *t6 = thread_create(f6, NULL);
    thread_add_runqueue(t6);
    
    while(1) {
        printf("thread 2: %d\n", i++);
        if (i == 566)
            thread_exit();
        thread_yield();
    }
}

void f1(void *arg) {
    int i = 7;
    struct thread *t3 = thread_create(f3, NULL);
    thread_add_runqueue(t3);
    struct thread *t4 = thread_create(f4, NULL);
    thread_add_runqueue(t4);
    
    while(1) {
        printf("thread 1: %d\n", i++);
        if (i == 11)
            thread_exit();
        thread_yield();
    }
}

void f0(void *arg) {
    int i = 392;
    struct thread *t1 = thread_create(f1, NULL);
    thread_add_runqueue(t1);
    struct thread *t2 = thread_create(f2, NULL);
    thread_add_runqueue(t2);
    
    while(1) {
        printf("thread 0: %d\n", i++);
        if (i == 397)
            thread_exit();
        thread_yield();
    }
}

int main(int argc, char **argv) {
    printf("mp_test2\n");
    struct thread *t0 = thread_create(f0, NULL);
    thread_add_runqueue(t0);
    thread_start_threading();
    printf("\nexited\n");
    exit(0);
}
