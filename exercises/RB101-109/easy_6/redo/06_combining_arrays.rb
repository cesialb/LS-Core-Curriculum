=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: two arrays
-  Output: array containing all values from OG two, no duplicate values

---
**Problem Domain:**
---
**Implicit Requirements:**
- Seems like the arrays have the same size
---
**Clarifying Questions:**
1. Are the arrays the same size always?
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
- Input values are arrays
- Output value is an array

---
Algorithm
---------
- Method passes in two arrays as arguments
- Create empty array
- Use concat method to add second array to first
- Use uniq method to find unique values only
- Return the array

Code
----
=end
 
def merge(arr1, arr2)
  total_arr = (arr1.concat(arr2)).uniq
end

# another solution
def merge(array_1, array_2)
  array_1 | array_2
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]