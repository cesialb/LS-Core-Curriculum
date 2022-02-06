=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: year greater than 0
-  Output: true if the year is a leap year, false if not
---
**Problem Domain:**
- Leap year: every year evenly divisible by 4, unless it's divisible by 100
- If it's divisible by 100, it's not a leap year unless it's divisible by 400
---
**Implicit Requirements:**
- Year is a positive integer (greater than 0)
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
- Input value is a positive integer
- Output value is a boolean

---
Algorithm
---------
- Method passes in year as argument
- If the year is divisible by 4, true. Otherwise branch
  - If the year is divisible by 100, 
    - If the year is divisible by 400, true. Otherwise false

Code
----
=end

def leap_year?(year)
  if year % 4 == 0
    if year % 100 == 0
      if year % 400 == 0
        true
      else
        false
      end
    else
      true
    end
  else
    false
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
