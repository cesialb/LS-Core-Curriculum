=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: string
-  Output: ASCII string value 
---
**Problem Domain:**
- Can use String#ord to determine ASCII value of a character
---
**Implicit Requirements:**
- Empty string will have a return value of 0
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
- Output value is an integer 0 or higher
---
Algorithm
---------
- Method passes in string as argument
- Break string into array of characters
- Create sum variable, set to 0
- Iterate through array, accessing each character
  - Add character.ord to sum
- Return sum

Code
----
=end

def ascii_value(str)
  sum = 0
  
  str.chars.each do |char|
    sum += char.ord
  end

  sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0