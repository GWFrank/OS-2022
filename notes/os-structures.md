# OS Structures

## System Calls

- An interface to services provided by the OS.

- Common APIs:
  
  - Windows API
  
  - POSIX API
    
    - UNIX, Linux, Mac OS
  
  - Java API
    
    - JVM

- Caller can treat the system call as a black box, and just obey the API.

- Parameter passing approaches:
  
  - Pass the parameters in registers
  
  - Stored in memory
  
  - Pushed to a stack then popped by the OS

## Linker & Loader

- **Linker**: Combines relocatable object files into a executable file.

- **Loader**: Loads the executable file into memory.

## OS Structure

- **Monolithic Structure**
  
  - No structure at all.
  
  - Speed & efficiency, simple
  
  - Difficult to implement and extend
  
  - Example: UNIX
    
    - Everything between the system-call interface and physical hardware is the kernel.
  
  - Example: Linux
    
    - Is monolithic because it runs entirely in kernel mode in a single address space.
    
    - Has a modular design that allows run time modification.

- **Layered Approach**
  
  - Challenges
    
    - How to define function of each layer
    
    - Poor performance
  
  - Successful example: **network**

- **Microkernel**
  
  - Remove all non-essential components, and implement them as user level programs
  
  - Better extensibility, portability, security, reliability
  
  - Poor performance

- **Modular**
  
  - More flexible than layered approach
  
  - More efficient than microkernel
  
  - Common in modern implementations like UNIX and Windows

## OS Debugging

- **Core dump**: When a process fail, OS dumps memory state of the process to it.

- **Crash dump**: When a failure in the kernel occurs, memory state is dumped to it.
