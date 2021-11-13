=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: an array of hashes, which hold arrays
-  Output: new array that has only the hashes where all the integers are even
---
**Problem Domain:**
---
**Implicit Requirements:**
---
1. For a hash to be returned, every integer has to be even
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
- Input value is an array of hashes - the hashes have an array of integers as their values
- Return value will be an array of the hashes - but only the hashes where every int is even

Algorithm
---------
- Because we're returning something to a new array from the old array, use map to iterate
- Iterating through the outer array:
  - We want to return a hash - use map to iterate through every hash
- Iterating through the hashes:
  - We want to select a specific hash - all even integers - use select
- Iterating through the array-value:
  - all?(num.even?)

Code
----
=end

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

new_arr = arr.select do |hash|
  hash.all? do |_, value|
    value.all? {|num| num.even? }
  end
end

p new_arr