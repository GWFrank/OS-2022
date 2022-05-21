# OS MP4 Report

b09902004 資工二 郭懷元

## Problem 1: Large Files

- Make each inode contains 10 direct blocks, 1 singly indirect block, and 2 doubly indirect blocks

- Modify `bmap()` and `itrunc()` to support doubly indirect blocks by mimicking how the singly indirect blocks are handled

## Problem 2: Symbolic Links to Files

- Use `writei()` to write the entire `MAXPATH` characters of target on the block, to avoid missing trailing `\0`

- Use a counter and a `while` loop in `open()` to count the depth of symlinks. If the depth exceeds 10, assume that it's a cycle and return error

## Problem 3: Symbolic Links to Directories

- In `namex()`, every time we encounter a symbolic link, we append the symlink target path to the front of current path, and start from `/` to search again
  
  - Also using a counter to detect loops

- `chdir()` is handled similarly to `open()`


