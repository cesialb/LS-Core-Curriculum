=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: integer
-  Output: true if integer is palindromic, false otherwise
---
**Problem Domain:**
---
**Implicit Requirements:**
---
**Clarifying Questions:**
1. What is a palindromic number?
  - Reads the same forwards and backwards
2.
3.
---
**Mental Model:**
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: 34543 
  -  Output: true
-  Example 2
  -  Inputs: 123210 
  -  Output: false
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
- Input value is an integer, output is a boolean
---
Algorithm
---------
- Method accepts integer as argument
- Convert integer to string and compare it to its reversed self

Code
----
=end

def palindromic_number?(int)
  int.to_s == int.to_s.reverse
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true