=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: year 
-  Output: true if leap year, false if not
---
**Problem Domain:**
- using Julian Calendar rules before 1752, otherwise Gregorian Calendar
- if JC:
    - evenly divisble by 4 
- if GC:
    - use leap_year method from exercise 3
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
---
Algorithm
---------
- Method accepts year as input
- If year is >= 1752
  - leap_year?
- else
  - year % 4 == 0

Code
----
=end

def leap_year?(year)
  if year >= 1752
    if year % 400 == 0
      true
    elsif year % 100 == 0
      false
    else
      year % 4 == 0
    end
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
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true