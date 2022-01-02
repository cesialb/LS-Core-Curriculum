=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: age and retirement age, provided by user
-  Output: retirement year and how many years to go
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
- Input values are positive integers
- Output values are positive integers

---
Algorithm
---------
- Prompt user for current age and what age they'd like to retire
- Get the current year
- Get retirement year by adding (retirement age - current age) to current year
- Display years left, which is (retirement age - current age)

Code
----
=end

print "What is your age? "
age = gets.chomp.to_i

print "At what age would you like to retire? "
retirement_age = gets.chomp.to_i

current_year = Time.now.year
years_left = retirement_age - age
retirement_year = current_year + years_left

puts "It's #{current_year}. You will retire in #{retirement_year}"
puts "You have only #{years_left} years of work to go!"
