## Target Sum

This is a solution to an online leetcode problem. The challenge is to take
an array of candidate integers and a target integer and return all possible
unique combinations of the candidate integers that sum up to the target.

Ex:

```
[1, 2, 4], 4
  => [[1, 1, 1, 1], [1, 1, 2], [2, 2], [4]]

[1, 2, 3], 6
  => [[1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 2], [1, 1, 1, 3], [1, 1, 2, 2], [1, 2, 3], [2, 2, 2], [3, 3]]
```

I opted for a recursive solution rather than an iterative one to add a bit
of extra challenge.