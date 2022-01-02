=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: word or multiple words, given by user
-  Output: number of characters of word(s), spaces not counted
---
**Problem Domain:**
---
**Implicit Requirements:**
- Spaces not counted -> get rid of spaces
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
- Prompt user for word(s)
- Create duplicate string and save input into this, get rid of spaces
- Count number of characters in duplicate string

Code
----
=end

print "Please write word or multiple words: "
answer = gets.chomp
answer_dup = answer.dup.split.join('')
puts "There are #{answer_dup.length} characters in \"#{answer}\"."

# better solution
print 'Please write word or multiple words: '
input = gets.chomp
number_of_characters = input.delete(' ').size
puts "There are #{number_of_characters} characters in \"#{input}\"."
