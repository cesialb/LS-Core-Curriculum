=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: integer
-  Output: maximum rotation of that argument
---
**Problem Domain:**
- Method brings in integer as argument
- Example:
  - 735291 is integer
    - one rotation: 352917
    - 3 is now 'fixed' in place, rotate again: [3]29175
    - 2 is now 'fixed' in place, rotate again: [32]1759
    - 1 is now 'fixed' in place, rotate again: [321]597
    - 5 is now 'fixed' in place, rotate again: [3215]79
    - 7 is now 'fixed' in place, can't rotate any further: [32157]9
    - Return this number - 321579
---
**Implicit Requirements:**
- Do not have to handle multiple zeroes
- Use the rotate_rightmost_digits method from previous exercise
- One digit argument returns the argument as is
---
**Clarifying Questions:**
1.
2.
3.
---
**Mental Model:**
- Take in an integer, rotate until we hit the last digit
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
- 
Code
----
=end

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

# couldn't figure out :(

def max_rotation(number)
  number_digits = number.to_s.size
  number_digits.downto(2) do |n|
    number = rotate_rightmost_digits(number, n)
  end
  number
end

max_rotation(735291) #== 321579
#max_rotation(3) == 3
#max_rotation(35) == 53
#max_rotation(105) == 15 # the leading zero gets dropped
#max_rotation(8_703_529_146) == 7_321_609_845