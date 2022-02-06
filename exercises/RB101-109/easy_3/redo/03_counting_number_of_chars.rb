=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: word or multiple words
-  Output: number of characters, spaces not counted
---
**Problem Domain:**
---
**Implicit Requirements:**
- String given must be valid, even if empty
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
  -  Inputs: walk 
  -  Output: 4
-  Example 2
  -  Inputs: walk, don't run
  -  Output: 13
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
- Input is string, output is string
- Will involve array at some point, to hold the characters
---
Algorithm
---------
- Prompt user for word/words
- Set word to this
- Delete spaces in word(s)
- Return string length

Code
----
=end

print "Please write word or multiple words: "
string = gets.chomp

edited_string = string.delete(' ')
puts "There are #{edited_string.length} characters in \"#{string}\"."