=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: positive integer
-  Output: right triangle whose sides have n stars
---
**Problem Domain:**
- Should have a blank line before the triangle begins
- Have a positive integer, n
- Build a right triangle with the hypotenuse at one end at lower-left
  - Other end at upper right

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
  -  Inputs: triangle(5)
  -  Output: 
    *
   **
  ***
 ****
*****
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
- Input value is a positive integer
- Output value is console output

---
Algorithm
---------
- Method passes in positive integer as argument
- Set counter to 0
- Set stars variable to '*' * counter
- Loop until counter variable is larger than n
  - Print stars on separate line
  - Increment counter by 1

Code
----
=end

def triangle(n)
  
  spaces = n - 1
  stars = 1

  n.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
  
end

triangle(5)
triangle(9)
