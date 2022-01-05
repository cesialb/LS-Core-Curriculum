=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: string containing first name, a space, and last name
-  Output: string containing last name, comma, a space, and first name
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
- Output value is a string

---
Algorithm
---------
- Method passes in string as argument
- Split string into an array of names
- Return string of "array element at index 1, comma, space, array element at index 0"

Code
----
=end

def swap_name(name)
  name = name.split
  "#{name[1]}, #{name[0]}"
end

# better solution
def swap_name(name)
  name.split(' ').reverse.join(', ')
end

p swap_name('Joe Roberts') == 'Roberts, Joe'