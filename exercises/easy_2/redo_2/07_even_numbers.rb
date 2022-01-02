=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: nothing
-  Output: all even numbers, 1 to 99 inclusive, on separate lines
---
**Problem Domain:**
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
---
Algorithm
---------
- Go from 1 to 99 inclusive, accessing each number
- If the number is evenly divisible by 2, print it

Code
----
=end

1.upto(99) do |num|
  puts num if num.even?
end