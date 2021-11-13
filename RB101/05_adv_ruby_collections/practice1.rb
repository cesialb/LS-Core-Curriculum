=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: an array of number strings
-  Output: the same array, ordered by descending numeric value
---
**Problem Domain:**
---
**Implicit Requirements:**
---
1. Understand that sorting by strings != sorting by numbers

**Clarifying Questions:**
1. What is descending numeric value?
  - From largest to smallest value
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
- It will be a new array returned, sorted in descending value

Algorithm
---------
- String sorting isn't what we want here
- We want the number strings to be sorted by the numbers they represent
- Convert strings to integers, then sort them
- each method will return the caller value
- map returns the transformed return value

Code
----
=end

arr = ['10', '11', '9', '7', '8']

sorted_arr = arr.sort do |a, b|
  b.to_i <=> a.to_i
end

p sorted_arr

# Got it right, but hack'n'slashed a bit
# Work harder on developing a solid algorithm before coding



