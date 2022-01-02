=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: two arguments
-  Output: product of the two arguments, returning it
---
**Problem Domain:**
---
**Implicit Requirements:**
- Return value is the product
- Two arguments could be integer or otherwise
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
- Input values are ambiguous
- Output value is product of two inputs

---
Algorithm
---------
- Method passes in two arguments
- Return product of arguments

Code
----
=end

def multiply(arg1, arg2)
  arg1 * arg2
end

p multiply(5, 3) == 15