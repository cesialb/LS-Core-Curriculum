=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: integer
-  Output: string representation of that integer
---
**Problem Domain:**
---
**Implicit Requirements:**
- No standard conversion methods in Ruby allowed
- Can use integer_to_string from previous exercise
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
  -  Inputs: 4321
  -  Output: '4321'
-  Example 2
  -  Inputs: -123
  -  Output: '-123'
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
- Input value is an integer, signed or not
- Output value is the string representation

---
Algorithm
---------
- How to know if a number is signed?
  - Is it before or after 0? That's all you need to know
  - Compare it to zero via spaceship operator

- Method accepts integer as argument
- integer <=> 0
  - if -1, it's negative
      - return -(integer_to_string)
  - if 1, it's positive
      - return +(integer_to_string)
  - else, it's zero
      - return integer_to_string

Code
----
=end

DIGITS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9' 
}

def integer_to_string(int)
  int_array = []

  loop do
    ele = int % 10
    int /= 10
    int_array << ele
    break if int == 0
  end

  int_array.map {|num| DIGITS[num]}.reverse.join('')
end

def signed_integer_to_string(int)
  case int <=> 0
  when -1
    '-' + integer_to_string(-int)
  when 1
    '+' + integer_to_string(int)
  when 0
    integer_to_string(int)
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'