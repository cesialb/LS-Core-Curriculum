=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: one argument
-  Output: square of that argument
---
**Problem Domain:**
---
**Implicit Requirements:**
- Must use multiply method from previous exercise
---
**Clarifying Questions:**
1. multiply method from exercise 4
2.
3.
---
**Mental Model:**
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: 5
  -  Output: 25
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
- Method accepts argument
- Within method, utilize multiply method - set both arguments to original arg
- Return value

Code
----
=end

def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

puts square(5) == 25
puts square(-8) == 64