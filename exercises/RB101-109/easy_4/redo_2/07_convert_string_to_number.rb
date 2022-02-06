=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: string of digits
-  Output: same number as an integer
---
**Problem Domain:**
- Can't use #to_i, Integer(), etc.
- **Analyze the characters in the string**
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
- Create hash - string digits 0-9 as keys, integer digits 0-9 as values
- Break string into characters in an array
- Iterate through array, accessing each element (map method)
  - Change element to its hash equivalent
- Now have an array of integers
- 

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

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570