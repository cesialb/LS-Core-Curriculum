=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: string argument
-  Output: new string with all consecutive duplicate characters collapsed into one
---
**Problem Domain:**
---
**Implicit Requirements:**
- Can not use String#squeeze or String#squeeze!
---
**Clarifying Questions:**
1. What's a consecutive duplicate character?
2. New string? No mutation of original? 
3. 
---
**Mental Model:**
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: '4444abcabcabccba'
  -  Output: '4abcabcba'
-  Example 2
  -  Inputs: 'gggggg'
  -  Output: 'g'
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
- Input value is a string, output value is a new string
---
Algorithm
---------
- Method accepts string as argument
- Break string into chars and begin iterating
  - Assign first char to first, next char to next
  - If first == next, new_str << first
  - Then assign first = next, and next = next[counter + 1]
Code
----
=end

def crunch(str)
  counter = 0
  new_str = ''

  while counter <= str.length - 1
    new_str << str[counter] unless str[counter] == str[counter + 1]
    counter += 1
  end

  new_str
end

p crunch('ddaaiillyy ddoouubbllee')

# further exploration
def crunch(str)
  str.chars.each_with_object('') do |char, new_str|
    new_str << char unless char == new_str[-1]
  end
end

p crunch('ddaaiillyy ddoouubbllee')
