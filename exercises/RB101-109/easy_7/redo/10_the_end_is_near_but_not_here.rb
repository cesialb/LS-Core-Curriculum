=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: string
-  Output: the next to last word in the argument
---
**Problem Domain:**
- Words are any sequence of non-blank characters
- String will always contain at least two words

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
- Output value is a new string

---
Algorithm
---------
- Method passes in string as argument
- Break string into an array of words, using space as delimiter
- Return the element at index -2 of array

Code
----
=end

def penultimate(string)
  string.split(' ')[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'