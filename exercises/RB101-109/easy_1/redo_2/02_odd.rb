=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: one integer
-  Output: true if integer's absolute value is odd
---
**Problem Domain:**
- Return true if the integer's absolute value is odd, false otherwise
---
**Implicit Requirements:**
- Assume argument is a valid integer
- Valid integer - positive, negative, or zero
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
  -  Inputs: 2 
  -  Output: false
-  Example 2
  -  Inputs: -17
  -  Output: true
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
- Input value is an integer
- Output value will be a boolean value
---
Algorithm
---------
- Method passes in integer as argument
- Absolute value of integer - abs method
- Check to see if absolute value is evenly divisible by 2
  - If it is, return false
  - If it isn't, return true
Code
----
=end

def is_odd?(int)
  abs_int = int.abs
  abs_int % 2 != 0
end

# another solution - no need for absolute value
# modulo always returns a positive number if number on the right is positive
def is_odd?(number)
  number % 2 == 1
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true