=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: an array of arrays
-  Output: new array, identical in structure, containing only integers that are mults of 3
---
**Problem Domain:**
---
**Implicit Requirements:**
---
- Use either the select or reject method at some point
- It must be a new array as the return value, not the original 

**Clarifying Questions:**
1. Multiples of 3?
  - When number % 3 == 0
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
- Initial array is an array of arrays - the subarrays being of varying lengths
- The subarrays all hold integers as their elements
- The return value will be a new array, with the same structure as the original array

Algorithm
---------
- In order for the new array to have the same structure, we must return the subarrays one by one

- Iterate through the outer array using the map method, and create multiple_array = [] - map allows for its return
- From there, iterate through the subarrays using the select method
- #select returns an array containing elements for which the block returns a truthy value
- The select block will evaluate number % 3 == 0
- #select returns the subarray 

Code
----
=end

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

multiple_array = arr.map do |sub_array|
  multiple_sub_array = sub_array.select do |number|
    number % 3 == 0
  end

  multiple_sub_array
end

p arr
p multiple_array