=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: Age, age that they'd like to retire
-  Output: current year, what year they're retiring, how many years left
---
**Problem Domain:**
---
**Implicit Requirements:**
---
Retiring age must be greater than or equal to current age.
Retiring age should not be higher than 100.

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
  -  Inputs: age: 30, retiring age: 70
  -  Output: current year: 2021, retiring year: 2061, 40 years to go
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
No structure needed.
---
Algorithm
---------
START
SET current_year to 2021
Prompt user for their age
Prompt user for their retiring age
SET age and retiring_age to corresponding answers
SET years_left = retiring_age - age
SET retiring_year = current_year + years_left
PRINT It's current_year. You will retire in retiring_year
PRINT You have only years_left of work to go!
END

Code
----
=end

CURRENT_YEAR = Time.now.year

def display(retiring_year, years_left)
  Kernel.puts("It's #{CURRENT_YEAR}. You will retire in #{retiring_year}.")
  Kernel.puts("You have only #{years_left} years of work to go!")
end

Kernel.puts('What is your age?')
age = Kernel.gets().chomp().to_i

Kernel.puts('At what age would you like to retire?')
retiring_age = Kernel.gets().chomp().to_i

years_left = retiring_age - age
retiring_year = CURRENT_YEAR + years_left

display(retiring_year, years_left)
