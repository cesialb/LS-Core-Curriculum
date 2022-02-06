=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: three sides of a triangle
-  Output: symbol, depending on what type of triangle it is
---
**Problem Domain:**
- Equilateral: all sides are equal length
- Isosceles: 2 sides are equal, one is different
- Scalene: all 3 sides are different length

- To be a valid triangle:
  - sum of the two shortest sides > longest side
  - all sides must be larger than 0
  - if not, it is invalid

---
**Implicit Requirements:**
---
**Clarifying Questions:**
1.
2.
3.
---
**Mental Model:**
- Take three sides of a triangle
- Find out if the triangle is a valid triangle
  - 2 shortest > longest
  - all sides > 0
- If it is, determine the type
    - Equilateral: all sides are the same
    - Isosceles: 2 sides are the same
    - Scalene: all sides are different
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: 3, 3, 3
  -  Output: :equilateral
-  Example 2
  -  Inputs: 3, 3, 1.5
  -  Output: :isosceles
---
_Your Test Cases:_
-  Example 3
  -  Inputs: 0, 3, 3
  -  Output: :invalid
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
- Method passes in sides as arguments
- Determine validity of the triangle, return :invalid if it doesn't meet reqs
- Check equilateral validity
    - Are all sides the same length?
- Check isosceles validity
    - Are only 2 sides the same length?
- Check scalene validity
    - Are all sides different?
- Could use a same side counter and iterate through array of the integers
    - 1 - scalene
    - 2 - isos
    - 3 - equil

Code
----
=end

def is_invalid?(sides)
  p sides
  sides.any?(0) && ((sides[0] + sides[1]) > sides[2])
end

def triangle(side1, side2, side3)
  side_array = [side1, side2, side3]

  return :invalid if !is_invalid?(side_array.sort)

  counter = 0

  side_array.each do |side|
    counter += 1 if side == side_array[0]
  end

  case counter
  when 1 then :scalene
  when 2 then :isosceles
  when 3 then :equilateral
  end

end

# better solution
def triangle(side1, side2, side3)
  sides = [side1, side2, side3]
  largest_side = sides.max

  case
  when 2 * largest_side > sides.reduce(:+) || sides.include?(0)
    :invalid
  when side1 == side2 && side2 == side3
    :equilateral
  when side1 == side2 || side1 == side3 || side2 == side3
    :isosceles
  else
    :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid

