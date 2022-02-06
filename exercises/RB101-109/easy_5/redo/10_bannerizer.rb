=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: short line of text
-  Output: console output of text, within a box
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
- Input value is a string
- Output value is console output

---
Algorithm
---------
- Method passes in string as argument
- To build top and bottom lines:
  - '+' + (('-' * length of string) + 2) + '+'
- To build other lines:
  - '|' + ((' ' * length of string) + 2) + '|'
- To build string line:
  - '| ' + string + ' |'

Code
----
=end

def top_or_bottom_line(string)
  puts '+' + ('-' * (string.length + 2)) + '+'
end

def other_line(string)
  puts '|' + (' ' * (string.length + 2)) + '|'
end

def string_line(string)
  puts "| " + string + ' |'
end

def print_in_box(string)
  top_or_bottom_line(string)
  other_line(string)
  string_line(string)
  other_line(string)
  top_or_bottom_line(string)
end

print_in_box('')
print_in_box('To boldly go where no one has gone before.')