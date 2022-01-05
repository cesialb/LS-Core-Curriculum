=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: array of numbers
-  Output: sum of sums of each leading subsequence for that array
---
**Problem Domain:**
- Sum of sums is the sum of running total
  - [3, 4, 5] == (3) + (3 + 4) + (3 + 4 + 5) ==> whatever number

---
**Implicit Requirements:**
- Array will always contain at least one number
---
**Clarifying Questions:**
1.
2.
3.
---
**Mental Model:**
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs:
  -  Output:
-  Example 2
  -  Inputs:
  -  Output:
---
_Your Test Cases:_
-  Example 3
  -  Inputs:
  -  Output:
---
_Your Edge Cases:_
-  Example 4
  -  Inputs:
  -  Output:
---
Data Structure
--------------
- Input value is an array of integers
- Output value is an integer

---
Algorithm
---------
- Method passes in array as argument
- Create accumulator variable, set to 0
- Create sum variable, set to 0
- Iterate through array, accessing each element
  - Add element to accumulator
  - Add accumulator to sum
- Return sum

Code
----
=end

def sum_of_sums(arr)
  accumulator = 0
  sum = 0

  arr.each do |num|
    accumulator += num
    sum += accumulator
  end

  sum

end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35