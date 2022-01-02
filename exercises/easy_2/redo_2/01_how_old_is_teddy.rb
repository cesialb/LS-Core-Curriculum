=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: nothing
-  Output: printing Teddy's age, with random number between 20 and 200
---
**Problem Domain:**
---
**Implicit Requirements:**
---
**Clarifying Questions:**
1. Is it 20 to 200 inclusive?
2. Integers only?
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
- No input value
- Output value is printing output
---
Algorithm
---------
- Generate random number between 20 and 200
- Print out phrase with this number

Code
----
=end

age = rand(20..200)
puts "Teddy is #{age} years old!"