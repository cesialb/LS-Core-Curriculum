=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: none
-  Output: all odd numbers from 1 to 99, inclusive, on separate lines
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
- None needed.
---
Algorithm
---------
- Iterate from 1 to 99
- If number % 2 == 1, print it

Code
----
=end

(1..99).each {|num| puts num if num % 2 == 1}

# better solution
1.upto(99) {|num| puts num if num.odd? }