=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: string of digits
-  Output: appropriate number as an integer
---
**Problem Domain:**
- String can have a leading + or - sign
  - If first character is a +, return a positive number
  - If first character is a -, return a negative number
  - If no sign, return a positive number
- Can use string_to_integer method from previous exercise
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
- Input value is a string
- Output value is an integer

---
Algorithm
---------
- Method passes in string as argument
- If first character is a +:
  - Chop that character off, return string_to_integer(string)
- If first character is a -:
  - Chop that character off, return -string_to_integer(string)
- Else
  - Return string_to_integer(string)


Code
----
=end

DIGITS = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, 
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9 }

def string_to_integer(string)
  int_array = string.chars.map { |value| DIGITS[value] }
  
  number = 0
  int_array.each { |digit| number = 10 * number + digit }
  number
end

def string_to_signed_integer(string)
  if string[0] == '+'
    string_to_integer(string[1..-1])
  elsif string[0] == '-'
    -string_to_integer(string[1..-1])
  else
    string_to_integer(string)
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100