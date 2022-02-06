=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: an array
-  Output: array that contains every other element of original array
---
**Problem Domain:**
- Looking for 1st, 3rd, 5th indices of original array
  - Index 0, 2, 4, etc...
---
**Implicit Requirements:**
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
- Input value is an array
- Output value is an array

---
Algorithm
---------
- Method passes in array as argument
- Create odd array and use each with index method for it
  - If the index is even, it goes in odd array
- Return odd array

Code
----
=end

def oddities(arr)
  odd_arr = []

  arr.each_with_index do |ele, idx|
    odd_arr << ele if idx.even?
  end

  odd_arr
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
