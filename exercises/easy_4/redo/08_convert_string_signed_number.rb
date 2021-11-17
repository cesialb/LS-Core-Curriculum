=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: string of digits
-  Output: appropriate number as an integer
  - string may have a leading sign this time
---
**Problem Domain:**
---
**Implicit Requirements:**
- You may use the string_to_integer method from previous exercise
- if leading sign is +, return a positive number
- if leading sign is -, return a negative number
- if no leading sign, return a positive number
- string will contain a valid number always
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
  -  Inputs: '-570' 
  -  Output: -570
-  Example 2 
  -  Inputs: '+100'
  -  Output: 100
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
- Method accepts string as argument
- Access the first character of the string, check it
  - if it is '+' 
    - get rid of it, then return string_to_integer(string)
  - if it is '-'
    - get rid of it, then return -string_to_integer(string)
  - else
    - return string_to_integer(string)

Code
----
=end

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, 
  '5' => 5, '6' => 6, '7' => 7, '8' => '8', '9' => 9 
}

def string_to_integer(string)
  int_array = string.chars.map {|char| DIGITS[char] }
  
  result = 0
  int_array.each do |int|
    result *= 10
    result += int
  end

  result
end

def string_to_signed_integer(string)
  case string[0]
  when '+'
    string.delete!('+')
    string_to_integer(string)
  when '-'
    string.delete!('-')
    -string_to_integer(string)
  else
    string_to_integer(string)
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100