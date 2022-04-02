# MP2 Bonus Report

b09902004 資工二 郭懷元

## 1.  Pros and Cons of Demand Paging

- Lower memory utilization. Unused allocated spaces never take up memory space.

- No external fragmentation. Paging allows noncontiguous physical address to be used. 

- Higher / more disk IO for demand paging.

- Works well when physical memory isn't large due to lower memory utilization.

- Sharing page is easy.

- Overhead due to interrupts and memory access time is a lot higher, because page faults happen more frequently.

## 2. Effective Memory Access Time Analysis

### Question 1

Assuming that TLB uses indices to all $k$ levels together as index and frame number as value.

$$
\begin{aligned}
\text{EMAT}&=& &P(\text{TLB access time} + \text{memory access time}) \\
&&&+ (1-P)(\text{TLB access time} + (k+1) \text{memory access time}) \\
\end{aligned}
$$

Where $P$ is TLB hit ratio.

### Question 2

$$
\begin{aligned}
0.8 (20 + x) + 0.2(20 + 4 \times x) &\lt 180 \\
x &\lt 100 \\
\end{aligned}
$$

Less than 100 nanoseconds
