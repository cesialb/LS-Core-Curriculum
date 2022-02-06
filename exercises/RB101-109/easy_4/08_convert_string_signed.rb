=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: string of digits
-  Output: appropriate number as an integer
---
**Problem Domain:**
---
**Implicit Requirements:**
---
- String may have a leading + or - sign
- If first char is +, method returns a positive number
- If first char is -, method returns a negative number
- If no sign is given, method returns a positive number
- String will always contain a valid number
- Can't use any of the standard conversion methods in Ruby

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
- The input is a string
- The output will be an integer

---
Algorithm
---------
- Have the string_to_integer method from the previous exercise
  - Has a digits hash that selects for the integer version of the character
  - It then creates an array of the integer versions of the string input
  - To build the total value: value = 10 * value + currently iterating digit
    - Do this through the entire array
  
- For finding signed values:
  - Get first character of the string input
    - If it's a +, use string_to_integer(input)
    - If it's a -, use string_to_integer(input), then subtract the return value from 0
    - If it's anything else, use string_to_integer(input)

Code
----
=end

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, 
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char]}
  value = 0

  digits.each {|digit| value = 10 * value + digit}
  value
end

def string_to_signed_integer(string)
  if string[0] == '+'
    string_to_integer(string.delete('+'))
  elsif string[0] == '-'
    -string_to_integer(string.delete('-'))
  else
    string_to_integer(string)
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100

