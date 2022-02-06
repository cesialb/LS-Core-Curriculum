=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: length and width of a room
-  Output: print area of room in sqft and sqm
---
**Problem Domain:**
---
**Implicit Requirements:**
- 1 sqm == 10.7639 sqft
- Don't worry about validating input
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
  -  Inputs: 10, 7
  -  Output: 70.0 sqm, 753.47 sqft
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
- Input value is two float/ints
- Output is print
---
Algorithm
---------
- Ask user for length in meters
- Set length to this
- Ask user for width in meters
- Set width to this

- sqm = length * width
- sqft = sqm * 10.7639
- Print output

Code
----
=end

SQM_TO_SQFT = 10.7639

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

sqm = (length * width).round(2)
sqft = (sqm * SQM_TO_SQFT).round(2)

puts "The area of the room is #{sqm} (#{sqft} square feet)."
