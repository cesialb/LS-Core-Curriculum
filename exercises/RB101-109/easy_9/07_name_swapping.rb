=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: string
-  Output: a string that contains the last name, comma, space, then first name
---
**Problem Domain:**
- Obtain a string that holds the name of a person
- Return a string that is "last name, first name"
---
**Implicit Requirements:**
- String will always contain two "words" to hold the full name
---
**Clarifying Questions:**
1. Is this the same string? Are we mutating it in any way?
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
- Output value is a string
---
Algorithm
---------
- Method passes in string as argument
- Split string with space as the delimiter, creating an array of "words"
- Return string interpolating second element and first element

Code
----
=end

def swap_name(name)
  name_arr = name.split
  name_arr[1] + ', ' + name_arr[0]
end

# more idiomatic solution
def swap_name(name)
  name.split.reverse.join(', ')
end

p swap_name('Joe Roberts') == 'Roberts, Joe'