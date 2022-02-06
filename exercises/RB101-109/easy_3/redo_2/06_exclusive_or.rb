=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: two arguments
-  Output: true if one argument is truthy, false otherwise
---
**Problem Domain:**
- Only one argument can be true for the method to return true
- Otherwise, it is false
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
- Input values are truthy or falsey
- Output value is a boolean

---
Algorithm
---------
- Method passes in two truthy/falsey values as arguments
- If arg1 is true AND arg2 is false - return true
- otherwise, return false

Code
----
=end

def xor?(arg1, arg2)
  return true if arg1 && !arg2
  return true if !arg1 && arg2

  false
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false
