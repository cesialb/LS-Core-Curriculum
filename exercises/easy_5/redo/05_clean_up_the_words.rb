=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: string consisting of some words and assortment of non-alphabetic characters
-  Output: string with non-alphabetic characters replaced by spaces
---
**Problem Domain:**
- If 1+ non-alphabetic characters occur in a row, only one space should be there in result
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
  -  Inputs: '---what's my +*& line?'
  -  Output: ' what s my line '
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
- Output value is a string

---
Algorithm
---------
- Method passes in string as argument
- Break string into an array of characters
- Iterate through the array, accessing each character (map method)
  - If the character is non-alphabetic, replace it with a space
  - If it is alphabetic, leave as is
- Join the array back into string (spaces should still be present)

Code
----
=end

def cleanup(string)
  string.gsub(/[^a-z ]/, ' ').squeeze(' ')
end

p cleanup("---what's my +*& line?") == ' what s my line '