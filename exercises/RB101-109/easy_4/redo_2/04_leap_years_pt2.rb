=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: integer
-  Output: true if integer is leap year, false otherwise
---
**Problem Domain:**
- Julian Calendar rules:
  - before 1752, year % 4 is the only test for leap year
- Gregorian Calendar rules:
  - including 1752
  - the usual
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
- Input value is a positive integer
- Output value is a boolean

---
Algorithm
---------
- Method accepts integer as input
- If the integer is smaller than 1752:
  - Test its divisibility by 4
- If the integer is 1752 or larger:
  - Use leap year method from previous exercise

Code
----
=end

def leap_year?(year)
  if year <= 1752
    year % 4 == 0
  else
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
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true