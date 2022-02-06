=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: two arguments
-  Output: return true if *exactly* one arg is truthy, false otherwise
---
**Problem Domain:**
- && returns true if both operands are truthy, false if either is
- || returns true if either or both operands are truthy. If both falsey, returns false
- xor will return true if ONLY one operand is truthy, otherwise it's false
---
**Implicit Requirements:**
- Writing a function named xor for this
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
  -  Inputs: 5.even?, 4.even?
  -  Output: true
-  Example 2
  -  Inputs: 5.odd?, 4.odd?
  -  Output: true
---
_Your Test Cases:_
-  Example 3
  -  Inputs: 5.odd?, 4.even?
  -  Output: false
---
_Your Edge Cases:_
-  Example 4
  -  Inputs:
  -  Output:
---
Data Structure
--------------
- xor
  - true and true == false
  - true and false == true
  - false and true == true
  - false and false == false
---
Algorithm
---------
- Method accepts two arguments that will return a boolean each
- If arg1 is true and arg2 is true
  - Return false
- If arg1 is true and arg2 is false
  - Return true
- If arg1 is false and arg2 is true
  - Return true
- If arg1 is false and arg2 is false
  - Return false
- Return boolean value

Code
----
=end

def xor?(arg1, arg2)
  if arg1 == true && arg2 == true 
    return false
  elsif arg1 == true && arg2 == false
    return true
  elsif arg1 == false && arg2 == true
    return true
  else
    return false
  end
end

# better solution
def xor?(value1, value2)
  return true if value1 && !value2
  return true if !value1 && value2
  false
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false