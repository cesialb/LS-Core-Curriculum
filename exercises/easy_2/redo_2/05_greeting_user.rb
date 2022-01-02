=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: name, given by user
-  Output: greeting, changing depending on if user uses an exclamation mark or not
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
---
Algorithm
---------
- Prompt user for name
- Check last character of name
  - If it's a '!', use option 2 for response
    - Remove '!' before responding
  - If not, use option 1 for response

Code
----
=end

print "What is your name? "
name = gets.chomp

if name[-1] == '!'
  puts "HELLO #{name.chop.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end