=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: a string
-  Output: new string with the words in reverse order
---
**Problem Domain:**
---
**Implicit Requirements:**
- Do not reverse the letters, just the words in the sequence
- Any number of spaces results in ''
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
  -  Inputs: 'Hello World'
  -  Output: 'World Hello'
-  Example 2
  -  Inputs: 'Reverse these words'
  -  Output: 'words these Reverse'
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
- Method accepts string
- Split string into array of words
- Reverse the array
- Join back into a string

Code
----
=end

def reverse_sentence(string)
  reverse_string = string.split.reverse!.join(' ')
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''