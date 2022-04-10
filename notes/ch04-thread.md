# Threads

## Overview

- Thread: basic unit of CPU utilization

- Threads of the same process shares:
  
  - Code
  
  - Data
  
  - Open files, signals, etc.

## Multicore Programming

- **Concurrency**: allows all tasks to make progress

- **Parallelism**: simultaneously perform multiple tasks

- Concurrency can be achieved without parallelism

- Challenges
  
  - Identifying task, balance, data splitting, data dependency, testing & debugging

- Amdahl's law

## Multithread Models

- User threads & kernel threads

- Many-to-One
  
  - Thread management is done by a library in user space. Therefore is efficient
  
  - The entire process will block if one thread makes a blocking system call
  
  - Can't run in parallel on multicore systems
  
  - Very few systems use this model now

- One-to-One
  
  - Creating a user thread requires creating the corresponding kernel thread
  
  - Linux & Windows implement this

- Many-to-Many
  
  - Multiplex user level threads to smaller or equal number of kernel threads
  
  - The most flexible, but difficult to implement
  
  - Due to increasing core count, limiting kernel thread number has become less important

## Thread Library

- Approach 1
  
  - A user-level library with no kernel support
  
  - Function calls in user space instead of system calls

- Approach 2
  
  - A kernel-level library directly supported by the OS
  
  - System calls

- Synchronous / Asynchronous
  
  - Asynchronous threading: parent and child thread execute concurrently
  
  - Synchronous threading: parent wait for all children to terminate before resuming

## Implicit Threading

- Transfer thread management from developers to compilers and run-time libraries

- "Tasks" to run in parallel instead of threads

- Examples
  
  - Thread pool
    
    - Create a number of threads and place them into a "pool"
    
    - Assign requests to an idle thread
    
    - Advantages:
      
      - Servicing a request with an existing thread is faster than creating a thread
      
      - Limits # threads exist
  
  - Fork join
    
    - Threads are not constructed directly during fork
    
    - In some ways, this is a synchronous version of thread pool
  
  - OpenMP
  
  - Grand Central Dispatch
    
    - Mac OS, iOS

## Issues

- `fork()` and `exec()`

- Signal handling

- Thread cancellation
  
  - Asynchronous / Deferred

- Thread-local storage
  
  - Useful when developer has no control over the thread creation process. e.g., thread pool

- Scheduler activations
  
  - **Lightweight Process**: an intermediate data structure between user and kernel threads.
  
  - The kernel provides LWPs to applications. The application schedule user threads onto available LWPs
  
  - 
