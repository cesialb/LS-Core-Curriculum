=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: an array of arrays
-  Output: a new array of the arrays, but ordered (either numerically or alphabetically)
---
**Problem Domain:**
---
**Implicit Requirements:**
---
- The return array must not be the original

**Clarifying Questions:**
1. How do strings sort themselves? Strings of varying lengths?
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
- Input value is an array of arrays
- The return value will be an array of arrays

Algorithm
---------
- We must iterate through the outer array, accessing each array
- Within the inner arrays, we must sort the elements
- Some elements are numeric, some are alpha - how to figure out which?
- If element converted to string --> converted to integer == the orig element, it's a number
- If not, it's a string
- If it's a number: 
    - sort them as integers do
- If it's a string:
    - How to sort strings?
      - If the comparable characters are equal, the longer word is "greater"
        - Ex. 'cap' and 'cape'
    - In this problem, sorting as is should be fine for both strings and integers

Code
----
=end

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

new_arr = arr.map do |sub_arr|
  sub_arr.sort
end

p arr
p new_arr