=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: argument
-  Output: square of that argument
---
**Problem Domain:**
- Use multiply method from previous exercise
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
- Input value is an argument
- Output value is square of argument

---
Algorithm
---------
- Method passes in one argument
- Use multiply method and pass in argument twice to it
- Return that value

Code
----
=end

def multiply(arg1, arg2)
  arg1 * arg2
end

def square(arg)
  multiply(arg, arg)
end

p square(5) == 25
p square(-8) == 64

# further exploration

def power(arg, power)
  product = 0
  (power-1).times {product += multiply(arg, arg)}
  product
end

p power(5, 2)
p power(2, 3)