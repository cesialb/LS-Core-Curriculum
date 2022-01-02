=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: nothing
-  Output: all odd numbers 1-99 inclusive, on separate lines
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
- Go from 1 up to 99, accessing each number
  - If the number is not evenly divisible by 2, print it

Code
----
=end

1.upto(99) do |num|
  puts num if num % 2 != 0 
end

# further exploration

1.upto(99) do |num|
  puts num if num.odd?
end