=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: short line of text
-  Output: print the line within a box
---
**Problem Domain:**
---
**Implicit Requirements:**
- Input will always fit in terminal window
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
- Output value is the string within a specified box

---
Algorithm
---------
- The length of the box is determined by the length of the string
  - box_length = '+' + (string.length + 2) + '+'
  - box_width = '+' + '| | |' + '+'
Code
----
=end

def print_in_box(str)
  top = '+-'
  side = '| '
  text_side = '| ' << str

  counter = 0

  loop do
    break if counter == str.length
    top << '-'
    side << ' '
    counter += 1
  end

  top << '-+'
  side << ' |'
  text_side << ' |'
  bottom = top

  puts top
  puts side
  puts text_side
  puts side
  puts bottom
end

# better solution
def print_in_box(str)
  horizontal_rule = "+#{'-' * (str.size + 2)}+"
  empty_line = "|#{' ' * (str.size + 2)}|"

  puts horizontal_rule
  puts empty_line
  puts "| #{str} |"
  puts empty_line
  puts horizontal_rule
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('hello!')
print_in_box('30 Thousand 100 Million')