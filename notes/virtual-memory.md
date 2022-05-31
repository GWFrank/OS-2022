# Virtual Memory

## Demand paging

- Pages are loaded only when they are demanded during execution

- Commonly used in virtual memory systems

- Use page fault handler to bring pages in

- **Pure demand paging**
  
  - Start execution with no page in memory
  
  - Only bring in when required

- **Reference locality**
  
  - Theoretically, a program might access several new pages with each instruction
  
  - In practice, it's a extremely unlikely

- Needed hardware support
  
  - Page table with valid bit (or other protection bits)
  
  - Secondary memory (back storage)

- Problem with instruction restart
  
  - Page fault might occur during moving a block of data
  
  - If source range and destination range are overlapped, a naive restart won't work
  
  - Solution
    
    - Microcode to trigger page faults first
    
    - Temporary register

- Free frame list
  
  - Erase previous content for security

- Performance
  
  - IO to swap space is generally faster than to file systems
  
  - 
