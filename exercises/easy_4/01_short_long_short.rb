=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: two strings
-  Output: a string consisting of shorter + longer + shorter, concatenated
---
**Problem Domain:**
---
**Implicit Requirements:**
---
1. Strings are of different lengths.
2. Strings can be empty.
**Clarifying Questions:**
1. What if the strings are equal in length? 
  - Assume that they are not in this problem.
2. 
3.
---
**Mental Model:**
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: 'abc', 'defgh'
  -  Output: 'abcdefghabc'
-  Example 2
  -  Inputs: 'abcde', 'fgh'
  -  Output: 'fghabcdefgh'
---
_Your Test Cases:_
-  Example 3
  -  Inputs: '', 'xyz'
  -  Output: 'xyz'
---
_Your Edge Cases:_
-  Example 4
  -  Inputs:
  -  Output:
---
Data Structure
--------------
- The return value will be a string.
  - A string concatenated from short_string + long_string + short_string

Algorithm
---------
- Method accepts two strings of unequal length as arguments
- Assign variables to the short string and the long string
- Create a variable concatenating short_string + long_string + short_string
- Return the created variable

Code
----
=end
