=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: noun, verb, adverb - given by user
-  Output: madlib story as console output
---
**Problem Domain:**
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
- Input value is nothing
- Output value is console output

---
Algorithm
---------
- Method passes in nothing
- Prompt user for noun, verb, adjective, adverb (keep these as constants to inject)
- Inject variables into desired console output

Code
----
=end

GRAMMAR = ['noun', 'verb', 'adjective', 'adverb']

puts "Enter a #{GRAMMAR[0]}: "
noun = gets.chomp

puts "Enter a #{GRAMMAR[1]}: "
verb = gets.chomp

puts "Enter a #{GRAMMAR[2]}: "
adjective = gets.chomp

puts "Enter a #{GRAMMAR[3]}: "
adverb = gets.chomp

puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"