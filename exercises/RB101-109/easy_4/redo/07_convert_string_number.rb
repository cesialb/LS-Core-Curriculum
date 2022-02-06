=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: string of digits
-  Output: appropriate number as an integer
---
**Problem Domain:**
- Analyze the characters in the string
---
**Implicit Requirements:**
- Can't use String#to_i, Integer(), etc.
- Do not worry about leading + or - signs
- Do not worry about invalid characters - assume all are numeric
---
**Clarifying Questions:**
1. 
2.
3.
---
**Mental Model:**
- Find a way to convert the string into the appropriate integer
- A hash may work here, for the conversion part at least
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: '4321'
  -  Output: 4321
-  Example 2
  -  Inputs: '570'
  -  Output: 570
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
- Use a hash to convert the appropriate string char to digit

---
Algorithm
---------
- Method accepts string as argument
- Build hash of digits:
  - Keys will be 0-9 in string form, values will be 0-9 in integer form
- Break string down into an array of its chars
- Iterate through the array
  - For every char, change it to its corresponding hash value
- Will then have an array of integers
- How to go from an array of ints to a 'full' integer value?
  - Create a sum variable (this will hold the final integer)
  - Iterate through the int array
    - Sum *= 10, then add the array element to sum - loop this
- Return sum variable 

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

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570