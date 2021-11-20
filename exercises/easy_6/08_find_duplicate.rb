=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: unordered array
-  Output: the duplicate value in the array
---
**Problem Domain:**
- Exactly one value in the array occurs twice, the rest occur once.
---
**Implicit Requirements:**
---
**Clarifying Questions:**
1.
2.
3.
---
**Mental Model:**
- Find the value that appears more than once in the array, and return it.
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: [1, 5, 3, 1]
  -  Output: 1
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
- Input value is an array.
- Output value is one value.
---

Algorithm
---------
- Method passes in array as argument
- Select for unique value within the array
- Return the unique value

Code
----
=end

def find_dup(arr)
  array.find { |ele| arr.count(ele) == 2 }
end

p find_dup([1, 5, 3, 1]) #== 1
find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73