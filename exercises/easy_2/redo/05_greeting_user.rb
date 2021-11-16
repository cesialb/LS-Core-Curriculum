=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: prompt for user's name
-  Output: either a simple hello, or a yell if name has exclamation mark
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
  -  Inputs: Bob
  -  Output: Hello Bob.
-  Example 2
  -  Inputs: Bob!
  -  Output: HELLO BOB. WHY ARE WE SCREAMING?
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
- No data structure needed.
---
Algorithm
---------
- Prompt user for name
- Set name to this
- Check if last character in name is a !
- If it is, chomp the last character and output the yell
- If it isn't, a simple hello as output

Code
----
=end

print "What is your name? "
name = gets.chomp

if name[-1] == '!'
  puts "HELLO #{name.chops.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end