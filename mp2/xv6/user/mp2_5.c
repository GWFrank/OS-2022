#include "kernel/types.h"
#include "kernel/stat.h"
#include "kernel/vm.h"
#include "user/user.h"
#include "kernel/riscv.h"
#include "kernel/memlayout.h"

#define PGSIZE 4096

int main(int argc, char *argv[]) {
  printf("MAXVA: %p\n", MAXVA);
  printf("trapoline: %p\n", TRAMPOLINE);
  printf("trapframe: %p\n", TRAPFRAME);

  int result = 0;

  char *page1 = sbrk(PGSIZE * 3);
  char *page2 = page1 + PGSIZE;
  char *page3 = page2 + PGSIZE;

  /* Trigger page fault */
  *page2 = 1;

  printf("# After page fault\n");
  vmprint();
  printf("\n");

  /* Run madvise(.., MADV_DONTNEED) */
  result = madvise(page1, PGSIZE * 3, MADV_DONTNEED);
  if (result != 0) {
    printf("error: return value of madvise() is incorrect.\n");
    exit(-1);
  }

  printf("# After madvise(DONTNEED)\n");
  vmprint();
  printf("\n");

  /* Trigger page fault on swapped page*/
  *page2 = 0;

  printf("# After page fault on swapped page\n");
  vmprint();
  printf("\n");

  /* Run madvise(.., MADV_WILLNEED) */
  result = madvise(page1, PGSIZE * 3, MADV_WILLNEED);
  if (result != 0) {
    printf("error: return value of madvise() is incorrect.\n");
    exit(-1);
  }

  printf("# After madvise(WILLNEED)\n");
  vmprint();


  for (char *ptr = page1; ptr < page2; ptr += 1) {
    if (*ptr != 0) {
      goto data_error;
    }
  }

//   if (*page2 != 1) {
//     goto data_error;
//   }
  for (char *ptr = page2; ptr < page3; ptr += 1) {
    if (*ptr != 0) {
      goto data_error;
    }
  }

  for (char *ptr = page3; ptr < page3 + PGSIZE; ptr += 1) {
    if (*ptr != 0) {
      goto data_error;
    }
  }

  exit(0);

data_error:
  printf("error: data integrity test failed\n");
  exit(1);
}
