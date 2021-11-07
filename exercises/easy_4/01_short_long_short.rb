=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: two strings
-  Output: a string consisting of shorter + longer + shorter, concatenated
---
**Problem Domain:**
---
**Implicit Requirements:**
---
1. Strings are of different lengths.
2. Strings can be empty.
**Clarifying Questions:**
1. What if the strings are equal in length? 
  - Assume that they are not in this problem.
2. 
3.
---
**Mental Model:**
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: 'abc', 'defgh'
  -  Output: 'abcdefghabc'
-  Example 2
  -  Inputs: 'abcde', 'fgh'
  -  Output: 'fghabcdefgh'
---
_Your Test Cases:_
-  Example 3
  -  Inputs: '', 'xyz'
  -  Output: 'xyz'
---
_Your Edge Cases:_
-  Example 4
  -  Inputs:
  -  Output:
---
Data Structure
--------------
- The return value will be a string.
  - A string concatenated from short_string + long_string + short_string

Algorithm
---------
- Method accepts two strings of unequal length as arguments
- Assign variables to the short string and the long string
  - Figure out length of both strings and assign variables accordingly
  - Ternary operator should work well here
  - ** For now: a simple if/else statement should be fine
- Create a variable concatenating short_string + long_string + short_string
- Return the created variable

Code
----
=end

def short_long_short(string1, string2)
  long_string, short_string, big_string = ''

  if string1.length > string2.length
    long_string = string1
    short_string = string2
  else
    long_string = string2
    short_string = string1
  end

  big_string = short_string + long_string + short_string
end

# better solution
def short_long_short(string1, string2)
  if string1.length > string2.length
    string2 + string1 + string2
  else
    string1 + string2 + string1
  end
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"
