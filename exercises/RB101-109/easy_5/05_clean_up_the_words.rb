=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: some lowercased words and an assortment of non-alphabetic characters
-  Output: string w/all non-alphabetic charactrs replaced by spaces
---
**Problem Domain:**
---
**Implicit Requirements:**
- if 1+ non-alphabetic characters occur in row, should have only one space in the result
  - in short, no consecutive spaces!
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
  -  Inputs: "---what's my +*& line?"
  -  Output: " what s my line "
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
- Output value is a string

---
Algorithm
---------
- Method accepts string as argument
- Split string by spaces
- Iterate through each array element
  - Delete everything that isn't a-z
- See what this brings

- Better general algorithm
  - Replace all non-alphabetic characters with spaces
  - Find a way to change all duplicate spaces to just one space

Code
----
=end

def cleanup(string)
  result = string.gsub(/[^a-z]/, ' ').squeeze(' ')
end

p cleanup("---what's my +*& line?")