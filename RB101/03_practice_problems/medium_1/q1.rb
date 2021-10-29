=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: nothing
-  Output: this outputted 10 times, subsequent line indented 1 space to the right
  The Flintstones Rock!
   The Flintstones Rock!
    The Flintstones Rock!
---
**Problem Domain:**
---
**Implicit Requirements:**
---
1. Next line in loop must be indented one space to the right.
2. One line program.

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
  -  Inputs: see P
  -  Output:
-  Example 2
  -  Inputs: see P
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
Something that loops three lines, 10 times.
Within those three lines, there has to be an indentation of one space each time.
Something in String that allows for a space push?
Also, each line is on a new line. 

Times method will be used.
10.times
#insert 

Algorithm
---------
Code
----
=end

10.times {|num| puts (" " * num) + "The Flintstones Rock!" }