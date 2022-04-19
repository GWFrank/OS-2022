# Main Memory

## Background

- **Address protection**
  
  - Must be provided by hardware
  
  - Compare addresses generated in user mode with "base" and "limit" registers
  
  - These two registers can only be changed by the OS

- **Address binding**
  
  - Before executing a user program
    
    1. Addresses in the source program are symbolic
    
    2. A compiler binds the symbolic addresses to relocatable addresses
       
       - e.g., `x` bytes from the start
    
    3. A linker or loader binds the relocatable addresses to absolute addresses
       
       - e.g. `0x3fb00001`
  
  - When to bind the address
    
    - Compile time
      
      - If the starting location changes, recompiling is needed
    
    - Load time
      
      - If the starting location changes, reloading is needed
    
    - Execution time
      
      - When the process can be moved within memory during execution
      
      - Most OS's use this method

- Logical & Physical address
  
  - **MMU**: hardware device performing run-time mapping from virtual to physical address
    
    - "base" register is called "relocation register"

- **Dynamic loading**: a routine is not loaded until called
  
  - Better memory usage
  
  - Useful when much code is used to handle uncommon cases. e.g., error routines
  
  - Doesn't require special support from the OS

- **Dynamic linking**: libraries are linked in execution time
  
  - Decreases size of executable images
  
  - **Dynamically linked libraries**
    
    - Only one instance in main memory
    
    - Extensive use in Windows and Linux
  
  - Requires OS support

## Contiguous Memory Allocation

- Memory allocation
  
  - Fitting strategies
    
    - First fit: first hole that is big enough
    
    - Best fit: smallest hole that is big enough
    
    - Worst fit: largest hole that is big enough
      
      - For largest leftover hole
    
    - Simulations have shown that both first fit and best fit are better than worst fit in terms of time and utilization

- Fragmentation
  
  - **Internal fragmentation**: allocated block size is larger than the actual needed size, so some memory is unused but occupied
  
  - **External fragmentation**: total available memory is enough, but they are not contiguous
  
  - Solutions
    
    - Compaction: place all free memory together
    
    - Paging

## Paging

- Basics
  
  - **Page**: logical memory unit
  
  - **Frame**: physical memory unit
  
  - **Page number**: index to a per-process page table
  
  - **Page offset**: location in the frame being referenced
  
  - Page size is defined by the hardware
  
  - Page size & internal fragmentation
    
    - Average fragmentation: 0.5 frame
    
    - Smaller page size has lower internal fragmentation
    
    - Larger page size has lower page table overhead and more efficient disk IO
  
  - **Frame table**: a system-wide table having one entry for each frame

- Hardware support
  
  - Implementation methods
    
    - Some dedicated registers
      
      - Efficient translation
      
      - Increase context-switch time
    
    - A "page-table base register" pointing to the page table in memory
      
      - Reduce context-switch time
  
  - **TLB** (translation look-aside buffer): A "cache" for address translation
    
    - Can be multilevel
    
    - **Address-space identifiers**: in TLB entries, to identify process and provide address-space protection

- Protection
  
  - Valid-invalid bit
  
  - Page-table length register
    
    - A process might not use the entire page table

- Shared pages: possibility to support memory sharing

## Page Table Structure

- Page table itself might become too large, and we don't want a long, contiguous allocation

- Hierarchical
  
  - Multilevel

- Hashed
  
  - Uses hash table
  
  - Requires computation
  
  - **Clustered page table**: a variation where each entry refers to several pages

- Inverted
  
  - Long lookup time
    
    - Hash table or TLB to accelerate
  
  - Decrease memory usage due to page tables
  
  - Difficult to implement shared memory

## Swapping

- Standard swapping: move the entire process to a backing storage

- Swapping with paging: swap pages

- On mobile systems
  
  - Often not supported due to limited write numbers of flash memory
