=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: two arrays, both containing numbers
-  Output: new array, containing product of each pair of numbers from same index
---
**Problem Domain:**
- Both arrays are of the same size
- New arrays' elements will be the product of the same index for array1 and array2
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
- Input values are arrays of integers
- Output value is a new array of integers

---
Algorithm
---------
- Method passes in two arrays as arguments
- Create empty array
- Iterate through array 1 - each with index method
  - Push array1[idx] * array2[idx] to new array
- Return new array

Code
----
=end

def multiply_list(arr1, arr2)
  product_arr = []
  arr1.each_with_index { |_, idx| product_arr << arr1[idx] * arr2[idx] }
  product_arr
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]