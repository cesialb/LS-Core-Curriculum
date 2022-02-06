=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: an integer
-  Output: sum of all multiples of 3 & 5 b/w 1 and the input number
---
**Problem Domain:**
---
**Implicit Requirements:**
---
1. The number passed in will be greater than 1.

**Clarifying Questions:**
1. What is a multiple?
2. Is the multiple set inclusive of 3 and 5?
3.
---
**Mental Model:**
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: 20
  -  Output: 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20)
-  Example 2
  -  Inputs: 3
  -  Output: 3
---
_Your Test Cases:_
-  Example 3
  -  Inputs: 10
  -  Output: 33
---
_Your Edge Cases:_
-  Example 4
  -  Inputs:
  -  Output:
---
Data Structure
--------------
The return value will be an integer.
It may be best to prepare an array of multiples, then sum them.

Algorithm
---------
- Method accepts integer as an argument
- Create an empty array
- Iterate from 1 to the integer, finding all numbers divisible by 3 and/or 5
  - number % 3 == 0 || number % 5 == 0
  - When a number is found, push to the array
  - Finish iterating
- Sum up all array elements, and return that number

Code
----
=end

def multiple?(number, divisor)
  number % divisor == 0
end

def multisum(max)
  multiples = []

  1.upto(max) do |num|
    multiples << num if multiple?(num, 3) || multiple?(num, 5)
  end
  
  multiples.sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168