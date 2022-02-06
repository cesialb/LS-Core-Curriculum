=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: asks for age and when you'd like to retire
-  Output: provide current year, retirement year, how many years left to go
---
**Problem Domain:**
---
**Implicit Requirements:**
- use Time class to get current year
- integers only for all inputs and outputs
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
  -  Inputs: 30, 70
  -  Output: 2016, 2056, 40
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
- No data structure necessary
---
Algorithm
---------
- Prompt user for their age
- Set age to this, convert to int
- Prompt user for their age of retirement
- Set retirement_age to this, convert to int

- use Time class to set current_year
- Set years_left to (retirement_age - age)
- Set retirement_year to (current_year + years_left)
- Display output

Code
----
=end

print "What is your age? "
age = gets.chomp.to_i

print "At what age would you like to retire? "
retirement_age = gets.chomp.to_i

current_year = Time.now.year
years_left = (retirement_age - age)
retirement_year = current_year + years_left

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You have only #{years_left} years of work to go!"
