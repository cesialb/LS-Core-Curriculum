=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: two arrays of integers
-  Output: new array
           - containing product of every pair of numbers that can be formed b/w the elements
             of the two arrays. Sorted by increasing value
---
**Problem Domain:**
- Multiply every element in array1 by every element in array2
- Once done, sort

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
- Input values are two arrays of integers
- Output value is a new array of integers

---
Algorithm
---------
- Method passes in two arrays as arguments
- Create empty array
- Iterate through array1, accessing each element
  - From there, iterate through array2, accessing each element
    - Multiply array1_ele by array2_ele, push to empty array
- Sort new array and return

Code
----
=end

def multiply_all_pairs(arr1, arr2)
  product_arr = []

  arr1.each do |arr1_num|
    arr2.each do |arr2_num|
      product_arr << arr1_num * arr2_num
    end
  end

  product_arr.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]