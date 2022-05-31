# CPU Scheduling

## Basic Concepts

- We want to maximize CPU utilization with multiprogramming

- Interleave CPU bursts and IO bursts

- Most CPU bursts are short, only few are long.

- CPU scheduling decision may happen when:
  
  1. "Running" to "waiting"
  
  2. "Running" to "ready"
  
  3. "Waiting" to "ready"
  
  4. Terminating

- Nonpreemptive: scheduling only happens on 1 and 4
  
  - A process only gives up CPU when waiting or terminating

- Preemptive: otherwise
  
  - Could result in race conditions without proper synchronization

- Dispatcher: switches context, switches to user mode, moves program counter

## Scheduling Criteria

- Maximize
  
  - **CPU utilization**
  
  - **Throughput**: # processes that complete execution per time unit

- Minimize
  
  - **Turnaround time**: time to execute a particular process, i.e. submission to completion
  
  - **Waiting time**: time in ready queue of a process
  
  - **Response time**: time between request and the first response

## Some Algorithms

### FCFS

- First come first serve

- Order of arrival massively affects waiting time

- **Convoy effect**: many processes wait for one big process to leave the CPU

### SJF

- Shortest job first

- Optimal for minimizing average waiting time

- In practice, lengths of jobs is difficult to know
  
  - Let user suggest
  
  - Predict
    
    - Exponential average of previous lengths

### Preemptive-SJF

- Aka shortest remaining time first

### RR

- Round robin

- Each process executes for a time quantum q

- If q is very large, it's similar to FCFS. But if it's too small, context switching overheads becomes too large.
  
  - q should be large relative to context switch time
  
  - Typical q: 10-100 ms
  
  - Typical context switch time: <10 μs
  
  - Around 80% of CPU bursts should be shorter than q

- Typically higher average turnaround time than SJF, but better response time

### Priority Scheduling

- A general strategy

- Can be preemptive or nonpreemptive

- Higher value -> lower priority (nice value)

- SJF: priority = inverse of predicted length

- Might cause starvation: lower prioritized might never execute
  
  - Solve with aging: increase priority of old processes

- Variation: **Priority + RR**
  
  - Higher priority first, than run RR on same priority processes

### Multilevel Queue

- Separate queues for each priority

- Example
  
  - real-time > system > interactive > batch

### Multilevel Feedback Queue

- A process may move between various queues

- Parameters
  
  - number of queues
  
  - algorithm for each queue
  
  - when to promote or demote a process
  
  - which queue a process enters

## Thread Scheduling

- Process-contention scope (PCS)
  
  - The thread library schedules user-level threads to an available LWP
  
  - For many-to-one and many-to-many

- System-contention scope
  
  - The kernel decides kernel-level threads to run on a CPU

## Multiprocessor

- Possible cases
  
  - Multicore
  
  - Multithreaded core
  
  - NUMA
  
  - Heterogeneous (different ISA, architecture, big-little)

- Asymmetric mp
  
  - Run kernel code on only one processor (master), others run only user code (slaves)
  
  - Simple, but not the best in terms of performance

- Symmetric mp
  
  - Each processor schedules itself
  
  - Queue solutions
    
    - One common ready queue, needs locking to prevent race condition
    
    - Each has a private queue, needs load balancing

- Multithreaded multicore
  
  - Two scheduling levels
    
    1. SW thread to HW thread
    
    2. HW thread to core
    
    Not necessarily mutually exclusive

- Load balancing
  
  - Push: move threads away from overloaded processors
  
  - Pull: idle processors pulls tasks from busy processors

- Processor affinity
  
  - A process wants to stay at the same processor (better cached)
  
  - Soft affinity: try to keep a thread on the same processor
  
  - Hard affinity: allow a processor to choose a set of processors

## Real-Time Scheduling

- Goal: low latency, service a task before deadline

- Event latency: time from an event occurring to being serviced
  
  - **Interrupt latency**: from arrival of interrupt to the start of handler
  
  - **Dispatch latency**: time for getting current process of and switching to another

- Priority based scheduling
  
  - Priority with preemptive only guarantees soft rt
  
  - New feature **period**:
    
    - A periodic process requires CPU at constant intervals
    
    - period p >= deadline d >= processing time t
    
    - "rate" is 1/p

- Rate monotonic scheduling
  
  - Priority = inverse of period
  
  - Might miss deadline

- Earliest deadline first scheduling

- Proportional share scheduling
  
  - T shares are allocated for all processes, process i receives N<sub>i</sub> shares

- POSIX rt scheduling
  
  - FCFS or RR

## Linux

- Complete fair scheduler (CFS)
  
  - Based on scheduling classes, each has a specific priority
  
  - Kernel may use different scheduling algorithms based on its purpose

- Default
  
  - Quantum is calculated based on nice values
  
  - A "virtual runtime" is maintained. Task with the lowest is dispatched
  
  - Target latency: all tasks will execute during this time interval

- NUMA
  
  - A "scheduling domain"

## Windows

- Priority based, preemptive

- 32-level priority

## Evaluating Algorithms

- Deterministic modeling
  
  - A particular designed workload

- Queueing models
  
  - Describe process arrivals, CPU bursts, and IO burst probabilistically
  
  - average queue length = average arrival rate * average waiting time

- Simulation

- Implement and test
