=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: string of digits
-  Output: the appropriate number as an integer
---
**Problem Domain:**
---
**Implicit Requirements:**
---
1. Do not use String#to_i, Integer(), any other standard conversion methods.
2. Calculate result by analyzing the characters in the string.
3. Don't worry about leading + or - signs.
4. All characters assumed numeric.

**Clarifying Questions:**
1. What does 'analyzing characters' mean?
2. Is there a way to find the real number from ASCII code? Hex code? Etc.?
3.
---
**Mental Model:**
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
- An integer will be returned as the value.

Algorithm
---------
- ASCII code for 0 through 9 are 48-57
- Create a hash for ASCII, ASCII matched with the corresponding integers

- Method accepts string as the argument
- Iterate through each character in the string
- Find the ASCII code for that character, and see if it matches up to hash keys
- If it does, it is that key's value
- Finish iterating through the string
Code
----
=end

# had to look it up :( ASCII code not the best algorithm.

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

p string_to_integer('1234')