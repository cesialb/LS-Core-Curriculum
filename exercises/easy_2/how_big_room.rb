=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: Length and width of a room
-  Output: Display of area in m^2 and ft^2
---
**Problem Domain:**
---
**Implicit Requirements:**
---
Displaying must be floats, with format of two decimal places
Do not worry about validating input (if it's negative, that's ok)
1 square meter == 10.7639 square feet
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
  -  Output: 70.00 sq m^2, 753.47 ft^2
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
No structure needed
---
Algorithm
---------
START
Prompt user for length and width of the room in meters
SET length_room and width_room to answers
SET length_room_feet = length_room * 10.7639
SET width_room_feet = width_room * 10.7639
SET area = length_room * width_room
SET area_feet = length_room_feet * width_room_feet
PRINT results of area in m^2 and ft^2
END

Code
----
=end

SQMETERS_TO_SQFEET = 10.7639

def compute_area(length, width)
  area = length * width
end

def convert_area_to_feet(area)
  area = area * SQMETERS_TO_SQFEET
end

def display_area(area_feet, area_meters)
  Kernel.puts("The area of the room is #{area_meters} square meters (#{area_feet} square feet).")
end

Kernel.puts("Enter the length of the room in meters: ")
length_room_meters = Kernel.gets().chomp().to_f

Kernel.puts("Enter the width of the room in meters: ")
width_room_meters = Kernel.gets().chomp().to_f

area_meters = compute_area(length_room_meters, width_room_meters).round(2)
area_feet = convert_area_to_feet(area_meters).round(2)

display_area(area_feet, area_meters)

# further exploration

SQFEET_TO_SQIN = 144
SQFEET_TO_SQCM = 929.0304

def convert_area_to_inches(area)
  area = area * SQFEET_TO_SQIN
end

def convert_area_to_centimeters(area)
  area = area * SQFEET_TO_SQCM
end

def display_area(area_feet, area_cm, area_in)
  Kernel.puts("The area of the room is #{area_feet} square feet")
  Kernel.puts("The area of the room is #{area_cm} square centimeters")
  Kernel.puts("The area of the room is #{area_in} square inches")
end

Kernel.puts("Enter the length of the room in feet: ")
length_room_feet = gets.to_f

Kernel.puts("Enter the width of the room in feet: ")
width_room_feet = gets.to_f

area_feet = compute_area(length_room_feet, width_room_feet).round(2)
area_in = convert_area_to_inches(area_feet).round(2)
area_cm = convert_area_to_centimeters(area_feet).round(2)

display_area(area_feet, area_cm, area_in)