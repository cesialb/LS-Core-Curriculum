=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: non-empty string
-  Output: middle character(s) of argument
            - if string has odd length, return one character
            - if string has even length, return two characters
---
**Problem Domain:**
- Even length string should return index at half and index at half + 1
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
- Input value is a non-empty string
- Output value is a string

---
Algorithm
---------
- Method passes in string as argument
- If string length is odd:
  - Return character at index[length / 2]
- If string length is even:
  - Return characters at index[length / 2] through index[(length / 2) + 1]

Code
----
=end

def center_of(string)
  length = string.length
  middle = length / 2
  middle_character = ''

  middle_character = string[(middle)] if length.odd?
  middle_character = string[(middle - 1)..(middle)] if length.even?
  middle_character
end

# cleaner solution
def center_of(string)
  center_index = string.size / 2
  if string.size.odd?
    string[center_index]
  else
    string[center_index - 1, 2]
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'