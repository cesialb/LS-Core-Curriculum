=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: integer argument, positive negative or zero
-  Output: boolean, if the integer argument's absolute value is odd
---
**Problem Domain:**
---
**Implicit Requirements:**
- Argument will always be a valid integer value
---
**Clarifying Questions:**
1. What's an absolute value?
  - non-negative value of a number without regard to its sign
2.
3.
---
**Mental Model:**
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: is_odd?(2)
  -  Output: false
-  Example 2
  -  Inputs: is_odd?(-17)
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
- Output value is a boolean
---
Algorithm
---------
- Method accepts integer as argument
- Find the absolute value of the integer
- Test the abs value against % 2 to see if it is odd
- Return boolean

Code
----
=end

def is_odd?(number)
  number.abs % 2 != 0
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true


# Modulo always return a positive value if the number on the right is positive
# How would you rewrite is_odd? so it worked regardless if % was modulo or remainder operator?
  # Use the abs method to obtain the absolute value

# Further exploration - rewrite is_odd? to use Integer#remainder instead of %
  # If number.remainder(2) equals 1, then it is odd
  # This becomes a problem with a negative number => -17.remainder(2) == -1
  # Find the absolute value, then apply remainder method

def is_odd?(number)
  number.abs.remainder(2) == 1
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true