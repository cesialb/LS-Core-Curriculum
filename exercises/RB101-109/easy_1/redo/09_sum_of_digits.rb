=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: positive integer
-  Output: sum of its digits
---
**Problem Domain:**
---
**Implicit Requirements:**
- Output value will be a positive int 
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
  -  Inputs: 23
  -  Output: 5
-  Example 2
  -  Inputs: 496
  -  Output: 19
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
- Input value is a positive int
- Output value is a positive int
---
Algorithm
---------
- Method accepts int as argument
- Convert int to string and split into characters
- Create sum variable
- Iterate through array and add converted char to int, to the sum var
- Return sum

Code
----
=end

def sum(num)
  sum = 0
  num.to_s.chars.each {|char| sum += char.to_i }
  sum
end

# cooler solution
def sum(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45