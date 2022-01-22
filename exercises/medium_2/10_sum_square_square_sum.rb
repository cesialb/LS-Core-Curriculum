=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: integer (n)
-  Output: difference b/w the square of sum of first n positive integers, 
           and sum of the squares of the first n positive integers
---
**Problem Domain:**
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
- Input value is an integer
- Output value is an integer

---
Algorithm
---------
- Make an array from 1 to n
- Helper method to obtain sum square, pass in array
  - Use reduce to get the sum, then square it
- Helper method to obtain square sum
  - Use map to change values to their square, then reduce it
- Subtract the two

Code
----
=end

def sum_square(arr)
  arr.reduce(:+).abs2
end

def square_sum(arr)
  arr.map {|num| num * num }.reduce(:+)
end

def sum_square_difference(n)
  number_arr = []
  1.upto(n) {|num| number_arr << num }
  sum_square(number_arr) - square_sum(number_arr)
end

# better solution
def sum_square_difference(n)
  sum = 0
  sum_of_squares = 0

  1.upto(n) do |value|
    sum += value
    sum_of_squares += value**2
  end

  sum**2 - sum_of_squares
end

p sum_square_difference(3) == 22
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150