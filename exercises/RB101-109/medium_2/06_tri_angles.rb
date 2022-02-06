=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: three angles of a triangle
-  Output: correct symbol for what type of triangle it is
---
**Problem Domain:**
- Right triangle: one angle is 90deg
- Obtuse triangle: one angle is more than 90deg
- Acute triangle: all angles are less than 90deg

- To be a valid triangle:
  - Sum of angles must be equal to 180, all angles must be greater than 0

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
- Input values are three integers
- Output value is a symbol

---
Algorithm
---------
- Determine validity of triangle
  - Sum has to be 180 and no angle can be 0
- Determine right validity
  - If one angle is 90
- Determine obtuse validity
  - If one angle is > 90
- Determine acute validity
  - If all angles are < 90

Code
----
=end

def is_invalid?(angle_arr)
  angle_arr.sum != 180 || angle_arr.include?(0)
end

def triangle(angle1, angle2, angle3)
  angle_arr = [angle1, angle2, angle3]

  return :invalid if is_invalid?(angle_arr)

  return :right if angle_arr.any?(90)
  return :obtuse if angle_arr.any? {|angle| angle > 90 }
  return :acute if angle_arr.all? { |angle| angle < 90 }
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid