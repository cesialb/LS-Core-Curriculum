=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: positive integer and a boolean
-  Output: bonus for a given salary
---
**Problem Domain:**
---
**Implicit Requirements:**
- If boolean == true, bonus == 1/2 of salary
- If boolean == false, bonus == 0
---
**Clarifying Questions:**
1. Positive integer == salary
2. Bonus could potentially be a float
3.
---
**Mental Model:**
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: calculate_bonus(2800, true) 
  -  Output: 1400
-  Example 2
  -  Inputs: calculate_bonus(1000, false)
  -  Output: 0
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
- Input value is a positive int and boolean
- Output value is an int or float
---
Algorithm
---------
- Method accepts positive int and boolean as args
- Set bonus to 0
- Check conditional for boolean
  - if true
    - bonus == salary / 2.0
- Return bonus

Code
----
=end

def calculate_bonus(salary, bonus)
  bonus ? (salary / 2.0) : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000