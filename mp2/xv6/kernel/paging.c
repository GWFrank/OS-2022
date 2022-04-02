#include "param.h"
#include "types.h"
#include "memlayout.h"
#include "riscv.h"
#include "spinlock.h"
#include "defs.h"
#include "proc.h"

/* NTU OS 2022 */
/* Page fault handler */
int handle_pgfault() {
    /* Find the address that caused the fault */
    uint64 va = r_stval();
    struct proc* p = myproc();
    pagetable_t pt = p->pagetable;
    // Allocate physical memory
    va = PGROUNDDOWN(va);
    void* pa = kalloc();
    if (pa == 0)
        return 1;
    // Check if it's in swap
    pte_t* pte_ptr = walk(pt, va, 0);
    if (pte_ptr != 0 && *pte_ptr & PTE_S) {
        begin_op();
        uint pg_blockno = PTE2BLOCKNO(*pte_ptr);
        read_page_from_disk(ROOTDEV, pa, pg_blockno);
        bfree_page(ROOTDEV, pg_blockno);
        end_op();
        // Modify pte
        uint64 flags = (PTE_FLAGS(*pte_ptr) & (~PTE_S)) | PTE_V;
        *pte_ptr = PA2PTE(pa) | flags;
    } else {
        memset(pa, 0, PGSIZE);
        if (mappages(pt, va, PGSIZE, (uint64)pa, PTE_W | PTE_X | PTE_R | PTE_U) !=
            0) {
            kfree(pa);
            return 1;
        }
    }
    return 0;
    // panic("not implemented yet\n");
}
