=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: prompts for noun, verb, adjective, and adverb from user
-  Output: a madlib using them with a given sequence
---
**Problem Domain:**
- Madlib is:
  "Do you [verb] your [adjective] [noun] [adverb]? That's hilarious!"
---
**Implicit Requirements:**
---
**Clarifying Questions:**
1. Should we assume that the user will always enter in something of value?
2. No return value?
3.
---
**Mental Model:**
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: 'dog', 'walk', 'blue', 'quickly'
  -  Output: 'Do you walk your blue dog quickly? That's hilarious!'
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
- Input values are four string values given by the user
- Output value is printing output in the madlib
---
Algorithm
---------
- Method begins by answer user for four strings - noun, verb, adjective, adverb
- Assign variables to those answers
- Return a string with those answers injected in

Code
----
=end

def prompt(msg)
  puts "=> #{msg}"
end

def madlib()
  prompt "Enter a noun:"
  noun = gets.chomp.downcase

  prompt "Enter a verb:"
  verb = gets.chomp.downcase

  prompt "Enter an adjective:"
  adjective = gets.chomp.downcase

  prompt "Enter an adverb:"
  adverb = gets.chomp.downcase

  puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
end

madlib

