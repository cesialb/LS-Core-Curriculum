=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: two integers
  - first integer: number
  - second integer: last n digits of number to rotate
-  Output: rotated number
---
**Problem Domain:**
- Can use the rotate_array method from previous exercise.
- Method brings in two numbers: 
  - first is the number to rotate
  - second is how many digits we are rotating
- Return the number rotated according to the second number
---
**Implicit Requirements:**
- rotating 1 digit => original number is returned 
- n is always a positive integer - will never be 0 or less
---
**Clarifying Questions:**
1. Will the number always be a positive integer?
2.
3.
---
**Mental Model:**
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: (735291, 1)
  -  Output: 735291
-  Example 2
  -  Inputs: (735291, 2)
  -  Output: 735219
---
_Your Test Cases:_
-  Example 3
  -  Inputs: (735291, 3)
  -  Output: 735912
---
_Your Edge Cases:_
-  Example 4
  -  Inputs: (735291, 4)
  -  Output: 732915
---
Data Structure
--------------
- Input values are two positive integers
- Output value is an integer
---
Algorithm
---------
- Method accepts two positive integers as input
- If second_int == 1, return first_int as is
- Convert first_int into string, then into an array of numbers
- Delete -second_int index from array, and push it at the end of the array
- Convert array back to string, then back to integer
- Return integer

Code
----
=end

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(num, n)
  return num if n == 1
  arr_num = num.to_s.chars

  digit = arr_num.delete_at(-n)
  arr_num << digit
  arr_num.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917