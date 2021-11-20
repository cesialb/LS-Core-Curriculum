=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: two arrays
-  Output: array containing all the values from the argument arrays - no duplication of values!
---
**Problem Domain:**
- Even if there are duplicate in the original arrays, get rid of those too.
- Return a new array combining the two argument arrays, unique values only.
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
  -  Inputs: [1, 3, 5], [3, 6, 9]
  -  Output: [1, 3, 5, 6, 9]
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
- Input values are two arrays
- Output value is an array

---
Algorithm
---------
- Method passes in two arrays as arguments
- new_array = arr1 + arr2
- Distill new_array to unique values only
- Return new array

Code
----
=end

def merge(arr1, arr2)
  new_arr = arr1 + arr2
  new_arr.uniq!
end

# interesting solution - use Array#|
  # it is a method that gives the set union of two arrays, so the result has no duplicates

def merge(arr1, arr2)
  arr1 | arr2
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]