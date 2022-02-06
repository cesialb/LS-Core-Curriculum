=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: number
-  Output: negative of that number, unless it's already negative or zero
---
**Problem Domain:**
- If the number is positive, return the negative number
- Otherwise, return the original number
---
**Implicit Requirements:**
---
**Clarifying Questions:**
1. Number? Integer? Does it matter?
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
  -  Output: -5
-  Example 2
  -  Inputs: -3
  -  Output: -3
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
- Input value is a number
- Output value is a number

---
Algorithm
---------
- Method accepts number as argument
- How to find if a number is positive?
  - If number > 0, return its negative
  - Otherwise, return the number as is

Code
----
=end

def negative(num)
  return -num if num > 0
  num
end

# ternary solution
def negative(number)
  number > 0 ? -number : number
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby