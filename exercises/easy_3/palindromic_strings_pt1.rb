=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: Argument is either a palindrome or not
-  Output: Return value is true or false, if palindrome or not
---
**Problem Domain:**
---
**Implicit Requirements:**
---
1. Argument must be a string.
2. Case matters.
3. Punctuation matters.
4. Spaces matter.

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
  -  Inputs: palindrome?('madam')
  -  Output: true
-  Example 2
  -  Inputs: palindrome?('Madam')
  -  Output: false
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
Return value will be either true or false.
Argument will be a string, and compared against the exact reverse of the string.

Algorithm
---------
Method will accept a string as an argument.
Within the method, a new string - reversal of the argument - will be compared against the argument.
Look into documentation in class String for reverse method.
If it is exactly the same, return true.
If not, return false.

Code
----
=end

def palindrome?(string)
  p string.reverse == string
end

palindrome?('Madam')
palindrome?('madam')
palindrome?('356653')

# further exploration
# Inputs: Method that accepts an Array as the argument
# Outputs: Return value of true or false, if the Array is palindromic or not

def adv_palindrome?(array)
  array.reverse == array
end

# #reverse works on both strings and arrays
def adv2_palindrome?(arg)
  arg.reverse == arg
end