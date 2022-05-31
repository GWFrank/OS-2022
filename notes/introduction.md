# Introduction

## What OS do

- User view
  
  - For ease of use.
  
  - Some attention to performance & security
  
  - Some systems have nearly no user view. e.g., embedded systems.

- System view
  
  - Resource allocator
    
    - Allocate resources to programs
    
    - Make the system efficient and fair
  
  - Control program

- Defining OS
  
  - **Kernel**: The program that runs all the time.
  
  - **System programs**: Associated with the OS, not necessarily part of the kernel.
  
  - **Application programs**: Not associated with OS.
  
  - Mobile OS's often include **middleware**.
    
    - e.g., database, multimedia, graphics

## Computer-System Organization

- **Bus**: Connects CPUs and device controllers. Provides access between components and shared memory.

- **(Hardware) Interrupt**: Hardware controllers trigger an interrupt to inform CPU that it has finished its operation.
  
  - Must be handled quickly, as they occur very frequently.
  
  - **Interrupt vector**: A table of pointers to interrupt routines.

- **Bootstrap program**: The first program to run on boot. Loads the OS.

- **Direct memory access**: The device controller transfer an entire block of data directly to/from main memory. Only 1 interrupt is issued, reducing overhead.

## OS Operations

- **System daemon**: Services provided outside of the kernel, by system programs, running the entire time the kernel is running.

- **Software interrupt**: Exception and trap.
  
  - Software error (divided by 0)
  
  - System call

- **Dual-mode operation**: User mode and kernel mode.

## Computing Environment

- Computing modes    
  
  - **Batch mode**: efficiency
    
    - Run independent of the environment
    
    - Results are written to files or output devices
    
    - e.g., compiler, ML
  
  - **Online mode**: responsiveness
    
    - Users interact with programs
    
    - No time constraints
    
    - e.g., spreadsheet, game, web browsing
  
  - **Real-time mode**: predictability
    
    - Interact strongly with the environment
    
    - Strong time constraints
    
    - e.g., vehicles, robots
