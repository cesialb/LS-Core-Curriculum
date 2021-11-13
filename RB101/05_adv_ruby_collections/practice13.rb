=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: an array of arrays
-  Output: new array, containing the same subarrays, ordered logically - only taking into consideration the odd numbers
---
**Problem Domain:**
---
**Implicit Requirements:**
---
1. Only take the odd numbers in the subarrays into consideration 

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
  -  Inputs: [[1, 6, 7], [1, 4, 9], [1, 8, 3]]
  -  Output: [[1, 8, 3], [1, 6, 7], [1, 4, 9]]
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
- Input is an array of arrays
- Output will be a new array, containing the same elements but sorted according to their odd numbers

Algorithm
---------
- Sorting by the odd elements in the subarrays
  - They're not just sorted by element - they're also sorted by subarray
- Iterate through outer array, accessing each subarray (we want to return a new, ordered subarray here)
- Find a way to sort ONLY the odd integers in the subarray
  - Select for them, and that's the criteria for sorting!

Code
----
=end

arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

sorted_arr = arr.sort_by do |sub_array|
  sub_array.select do |num|
    num.odd?
  end
end

p sorted_arr
