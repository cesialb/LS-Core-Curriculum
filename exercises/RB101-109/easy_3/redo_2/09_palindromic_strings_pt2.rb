=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: string
-  Output: true if the string is a palindrome, otherwise false
---
**Problem Domain:**
- Case-insensitive this time, and ignore all non-alphanumeric characters
- Can also call palindrome? from previous exercise
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
- Output value is a boolean
---
Algorithm
---------
- Method passes in string as argument
- Helper method
  - Lowercase the string in place, then get rid of non-alphanumeric characters
- Use palindrome? to determine return value

Code
----
=end

def edit_str(str)
  str.downcase.delete('^a-z0-9')
end

def palindrome?(str)
  str == str.reverse
end

def real_palindrome?(str)
  new_str = edit_str(str)
  palindrome?(new_str)
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false