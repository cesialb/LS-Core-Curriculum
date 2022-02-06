=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: length and width of a room - given by user
-  Output: area of room in sq meters and sq feet
---
**Problem Domain:**
- 1 sq m == 10.7639 sq ft
---
**Implicit Requirements:**
- Inputs must be positive numbers
- Output must be a positive number
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
- Input values are two numbers
---
Algorithm
---------
- Ask user for length and width of room
- Create constant for sqft conversion
- Create area_meters variable that multiples two inputs from user
- Use constant to convert area_meters to area_feet
- Display output

Code
----
=end

SQM_TO_SQFT = 10.7639

puts "Enter the length of the room in meters:"
length = gets.chomp.to_i

puts "Enter the width of the room in meters:"
width = gets.chomp.to_i

area_meters = (length * width).round(2)
area_feet = (area_meters * SQM_TO_SQFT).round(2)

puts "The area of the room is #{area_meters} square meters (#{area_feet} square feet)."
