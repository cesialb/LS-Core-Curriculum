=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: positive integer, or zero
-  Output: string representation of the integer/zero
---
**Problem Domain:**
---
**Implicit Requirements:**
- May not use Integer#to_s, String(), Kernet#format, etc.
- Analyze and manipulate the number...

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
  -  Inputs: 0
  -  Output: '0'
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
- Input value is a positive integer, or zero
- Output value is a string representation of the number

---
Algorithm
---------
- Method accepts integer as argument
- Example: 4321 - How to obtain 4, 3, 2, 1 from it?
  - 4321 % 10 = 432 remainder 1
  - 432 % 10 = 43 remainder 2
  - 43 % 10 = 4 remainder 3
  - 4 % 10 = 0 remainder 4
- Create an array
- Create a loop, stopping when the number_value is 0
  - Modulo 10 each time, saving the remainder and pushing it to the array
  - Stop when num_value is 0
- Create a digits hash
  - Have the key as the integer, and the string equivalent as the key - from 0-9
- Iterate through the array of ints
  - Reassign the elements to their corresponding hash value
- Reverse the now-string array, and join them together
- Return the string

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

  string_array = int_array.map {|num| DIGITS[num]}
  
  string_array.reverse.join('')
end

# better solution
DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'