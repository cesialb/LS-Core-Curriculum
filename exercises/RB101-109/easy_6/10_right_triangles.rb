=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: positive integer, n
-  Output: right triangle whose sides have n stars
---
**Problem Domain:**
---
**Implicit Requirements:**
- Integer will not be negative
---
**Clarifying Questions:**
1.
2.
3.
---
**Mental Model:**
- Example is triangle(5)
- Create a loop that prints:
  - 4 spaces, 1 star
  - 3 spaces, 2 stars
  - 2 spaces, 3 stars
  - 1 space, 4 stars
  - 0 spaces, 5 stars
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
- Input value is an integer
- Output value is display output of a right triangle

---
Algorithm
---------
- Method passes in integer as argument
- spaces = integer - 1
- stars = '*'

- Loop through until stars.size == integer
  - Line = spaces + stars
  - Puts line
  - Pop spaces, add a '*' to stars

Code
----
=end

def triangle(num)
  spaces = " " * (num - 1)
  stars = '*'
  
  while stars.size <= num
    puts spaces + stars
    spaces.chop!
    stars << '*'
  end
end

# another solution
def triangle(num)
  spaces = num - 1
  stars = 1

  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end

triangle(5)
triangle(9)

# further exploration - triangle upside down
def upside_down_triangle(num)
  stars = num
  spaces = 0

  num.times do |n|
    puts ('*' * stars) + (' ' * spaces)
    spaces += 1
    stars -= 1
  end
end

upside_down_triangle(5)
upside_down_triangle(9)