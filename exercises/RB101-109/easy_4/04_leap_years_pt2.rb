=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: year
-  Output: boolean value, depending on if the Julian or Gregorgian calendar is being used
---
**Problem Domain:**
---
**Implicit Requirements:**
---
- Julian Calendar states that leap years are in ANY year that is divisible by 4.
  - JC years were before 1752
- Gregorian Calendar leap year criteria is in part 1 of this program
**Clarifying Questions:**
1. What is a JC leap year?
2. What is a Gregorian leap year?
3. Should 1752 be included in JC or GC?
  - GC
---
**Mental Model:**
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: 1752
  -  Output: true (beginning of GC criteria)
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
- Return value will be a boolean

Algorithm
---------
- Method accepts integer as argument for year
- If the year is before 1752, it falls under JC criteria
- If the year is 1752 and after, it falls under GC criteria
- Compute the leap year boolean based on these findings
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

# better solution
def leap_year?(year)
  if year < 1752 && year % 4 == 0
    true
  elsif year % 400 == 0
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
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true