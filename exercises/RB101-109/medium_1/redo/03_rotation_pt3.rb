=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: integer
-  Output: maximum rotation of that integer
---
**Problem Domain:**
- Use rotate_rightmost_digits method from previous exercise
Ex. 735291
      - rotation 1: 352917 => keep number in place after rotating
      - rotation 2: [3]52917 => 329175
      - rotation 3: [32]9175 => 321759
      - rotation 4: [321]759 => 321597
      - rotation 5: [3215]97 => 321579 - maximum rotation
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
- Method passes in integer as argument
- Create rotate_digit, set to size of integer
- Loop size of integer
  - Assign number to = rotate_rightmost_digits(integer, rotate_digit)
  - Decrement rotate_digit by 1
- Return number

Code
----
=end

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(number, digits)
  number_arr = number.to_s.chars
  rotating = number_arr.slice!(-digits, digits)

  rotating = rotate_array(rotating)
  number_arr += rotating
  
  number_arr.join.to_i
end

def max_rotation(number)
  rotate_digit = number.to_s.size

  while rotate_digit != 0
    number = rotate_rightmost_digits(number, rotate_digit)
    rotate_digit -= 1
  end

  number
end

p max_rotation(735291) ˙== 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
