# Synchronization

## Background

- Shared data + concurrent access -> data inconsistency

- Race condition

## Critical Section

- The problem
  
  - When one process is in its critical section, others must not be executed
  
  - How to implement this?

- Solution requirements
  
  - Mutual exclusion
  
  - Make progress
  
  - Bounded waiting
    
    - A process waits limited time trying to enter critical section

- Naive interrupt-based solution
  
  - Disable interrupts when entering
  
  - Re-enable when exiting
  
  - Can cause starvation

## Peterson's Solution

- Assume that `load` and `store` are atomic

- Two processes share `int turn` and `boolean flag[2]`
  
  - `turn`: who to enter
  
  - `flag[i]`: P<sub>i</sub> is ready to enter

- ```c
  while (true) {
      flag[i] = true;
      turn = j;
      while (flag[j] && turn == j) ;
      // Critical section
      flag[i] = false;
      // Remainder
  }
  ```

- All 3 properties are satisfied

- Not guaranteed to work on modern CPUs due to RW reordering

## Hardware Supports

- Memory barrier
  
  - Force changes in memory to be propagated to all other processors
  
  - A very low-level operation

- Instructions
  
  - `test_and_set`
    
    - Return the original value
    
    - Set variable to `true`
    
    - No bounded waiting
  
  - `compare_and_swap`
    
    - Can support bounded waiting with some tweaks
  
  - Both typically used to build higher-level tools

- Atomic variable
  
  - Supports atomic modification

## Mutex

- Mutual exclusion lock

- A simpler interface to devs

- Requires busy waiting

## Semaphore

- An integer variable, an improved mutex

- Records "available spots"

- `wait()` and `signal()`

- Binary semaphore = mutex

- Can avoid busy waiting buy including `sleep()` and `wakup()` into `wait()` and `signal()`
  
  - Also needs a list of  waiting processes

- Can satisfied bounded waiting using FIFO queues

## Monitors

- Mutexes and semaphores won't work if the developer misuse it

- A high-level abstraction

- ```c
  monitor monitor-name {
      /* shared variable declarations */
      procedure P1 (...) {...}
      procedure P2 (...) {...}
      procedure Pn (...) {...}
      initialization_code (...) {...}
  }
  ```

- Ensures only one process is active at a time

- Condition variables
  
  - `x.wait()` and `x.signal()`
  
  - signal-and-wait or signal-and-continue
  
  - 

## Liveness

- Deadlock
  
  - A cycle in the "waiting dependency"
  
  - Everyone is waiting, nobody makes progress

- Priority inversion
  
  - When a lower-priority process holds a lock that some higher-priority processes need
