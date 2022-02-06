=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: positive integer (salary) and boolean
-  Output: bonus for the given salary
---
**Problem Domain:**
- You have a salary amount as an integer, and a boolean
- Calculate the bonus given the salary and boolean
  - If boolean is true, bonus is half of salary
  - If boolean is false, bonus is 0
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
- Input values are a positive integer and boolean
- Output value is an integer
---
Algorithm
---------
- Method passes in integer and boolean as arguments
- If boolean is true
  - Bonus is half of salary
- Else
  - Bonus is 0

Code
----
=end

def calculate_bonus(salary, bonus_flag)
  if bonus_flag
    bonus = salary / 2
  else
    bonus = 0
  end

  bonus
end

# more idiomatic solution
def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000