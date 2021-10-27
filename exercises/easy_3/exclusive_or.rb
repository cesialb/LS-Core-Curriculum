=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: Two arguments
-  Output: True if exactly of the arguments is truthy
---
**Problem Domain:**
---
**Implicit Requirements:**
---
1. Looking for a boolean result, instead of truthy/falsy value that || and && returns
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
  -  Inputs: xor?(5.even?, 4.even?)
  -  Output: true
-  Example 2
  -  Inputs: xor?(5.odd?, 4.even?)
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
No data structure needed.
xor? method should evaluate exactly one argument as true.

Algorithm
---------
Code
----
=end

def xor?(arg1, arg2)
  arg1 ^ arg2
end

p xor?(5.even?, 4.even?)
p xor?(5.even?, 4.odd?)

# ^ only works if both values are numeric or boolean

# better solution

def xor?(arg1, arg2)
  return true if arg1 && !arg2
  return true if !arg1 && arg2
  
  return false
end