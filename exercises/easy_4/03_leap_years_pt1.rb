=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: year as input
-  Output: boolean, wrt leap year status
---
**Problem Domain:**
---
**Implicit Requirements:**
---
1. Year will be greater than 0
**Clarifying Questions:**
1. What is a leap year? Gregorian Calendar used:
  - Every year evenly divisible by 4, unless it's also divisible by 100
  - If it IS divisible by 100, it's not a leap year unless it is divisible by 400
2.
3.
---
**Mental Model:**
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: leap_year?(2016)
  -  Output: true
-  Example 2
  -  Inputs: leap_year?(2015)
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
- Return value will be a boolean
- Input is an integer

Algorithm
---------
- Method accepts integer as argument for year
- If year % 4 == 0 and year % 100 != 0, then it's a leap year
- If year % 100 == 0: if year % 400 == 0, then it's a leap year
- Otherwise it is not a leap year

Code
----
=end

def leap_year?(year)
  if year % 4 == 0
    if year % 100 != 0
      return true
    else
      if year % 400 == 0
        return true
      end
    end
  end
  false
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
p leap_year?(240_000) == true
p leap_year?(240_001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true
