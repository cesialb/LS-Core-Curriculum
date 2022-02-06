=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: Method that accepts a string as an argument
-  Output: True or false, if string is a palindrom
---
**Problem Domain:**
---
**Implicit Requirements:**
---
1. Cases do not matter here.
2. Ignore all non-alphanumeric characters.

**Clarifying Questions:**
1. Is there a way to remove all non-alphanumeric characters?
2. Is there a way to ensure only alphanumeric characters remain?
3.
---
**Mental Model:**
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: real_palindrome?('madam')
  -  Output: true
-  Example 2
  -  Inputs: real_palindrome?('Madam, I'm Adam')
  -  Output: true (only alphanumerics matter)
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
Return value will be true or false.
String as argument should be reduced to just its alphanumeric characters.
Case does not matter for argument string - downcasing is necessary.

Algorithm
---------
Method starts, with string as an argument.
Argument is downcased within the string, leaving the original intact.
String's #delete will remove all non-alphanumeric characters.

Code
----
=end

def real_palindrome?(string)
  fixed_string = string.downcase.delete('^a-z0-9')
  p fixed_string == fixed_string.reverse
end

real_palindrome?("Madam, I'm Adam")
real_palindrome?('Madam')