=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: any year greater than 0 
-  Output: true if leap year, false if not
---
**Problem Domain:**
---
**Implicit Requirements:**
- Leap year: every year evenly divisible by 4, unless it's also evenly divisible by 100
  - If divisible by 100, not leap year unless it's evenly divisible by 400
- Argument will be an integer
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
  -  Inputs: 2016
  -  Output: true
-  Example 2
  -  Inputs: 2015
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
- Input value is an integer, output value is a boolean
---
Algorithm
---------
- Method accepts integer as argument for year
- Test if year % 400 == 0
  - If true, leap year
  - If false, test if year % 100 
    - If true, not leap year
    - If false, test if year % 4 == 0
      - If true, leap year
      - If false, not leap year
- Return leap year boolean value
  
Code
----
=end

def leap_year?(year)
  if year % 4 == 0 && !(year % 100 == 0)
    true
  else
    if year % 400 == 0
      true
    else
      false
    end
  end
end

# better solution
def leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 4 == 0
  end
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true