=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: two strings
-  Output: a concatenation of the shorter string, longer string, shorter string
---
**Problem Domain:**
---
**Implicit Requirements:**
---
- Assume that the strings are different lengths

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
  -  Inputs: 'abc', 'defgh'
  -  Output: 'abcdefghabc'
-  Example 2
  -  Inputs: '', 'xyz'
  -  Output: 'xyz'
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
- Strings as input
- Output will be one string

---
Algorithm
---------
- Method accepts strings as argument
- Compare string lengths, find shorter and longer one
- Concatenate short-long-short and return this value

Code
----
=end

def short_long_short(string1, string2)
  if string1.size < string2.size
    short = string1
    long = string2
  else
    short = string2
    long = string1
  end

  short + long + short
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