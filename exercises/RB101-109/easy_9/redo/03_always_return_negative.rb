=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: number
-  Output: if number is positive, return negative of it
          - if number is 0 or negative, return original number
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
- Input value is an integer
- Output value is an integer

---
Algorithm
---------
- Method passes in integer as input
- Return -integer if the integer is greater than 0
- Return integer otherwise

Code
----
=end

def negative(number)
  return -number if number > 0
  return number
end

# cleaner solution
def negative(number)
  number > 0 ? -number : number
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby