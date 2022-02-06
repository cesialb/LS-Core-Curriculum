=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: string passed as an argument
-  Output: ASCII string value
---
**Problem Domain:**
---
**Implicit Requirements:**
- Can use String#ord to determine the ASCII value of a character
- Empty string has an ASCII value of 0
---
**Clarifying Questions:**
1. What's an ASCII string value?
  - The sum of the ASCII values of every character in the string
2.
3.
---
**Mental Model:**
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: 'Four score'
  -  Output: 984
-  Example 2
  -  Inputs: 'Launch School'
  -  Output: 1251
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
- String value as input
- ASCII string value as output - an integer
---
Algorithm
---------
- String#ord is allowed
- Break string down into an array of its characters
- Create sum value and set it to 0
- Iterate through this array, accessing each element (character)
- Append character.ord to sum
- Return sum variable

Code
----
=end

def ascii_value(string)
  sum = 0

  string.each_char do |char|
    sum += char.ord
  end
  sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0
