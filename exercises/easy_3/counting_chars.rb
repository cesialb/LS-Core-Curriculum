=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: Word or multiple words 
-  Output: Number of characters
---
**Problem Domain:**
---
**Implicit Requirements:**
---
1. Spaces should not be counted in the number of characters.

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
  -  Output: "There are 4 characters in walk"
-  Example 2
  -  Inputs: walk, don't run
  -  Output: "There are 13 characters in walk, don't run"
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
No data structure needed. 
User prompt should be saved in string for later use.
Any methods in Ruby that count number of characters? check class String? other_str?

Algorithm
---------
START
User prompted for word or multiple words
SET response = user prompt
SET fixed_response = response.delete(" ")
PRINT fixed_response.length
END

Code
----
=end

print "Please write word or multiple words: "
response = gets.chomp

char_count = response.delete(" ").length

puts "There are #{char_count} characters in \"#{response}\""