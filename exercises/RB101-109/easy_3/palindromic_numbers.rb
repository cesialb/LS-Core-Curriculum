=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: Method that accepts an integer argument
-  Output: Return value is true or false, depending on if argument is palindromic
---
**Problem Domain:**
---
**Implicit Requirements:**
---
1. Argument must be an integer.
2. Reads the same forwards and backwards for it to be true. 

**Clarifying Questions:**
1. Is there a way to reverse an integer?
2. Should it be converted to string, then reversed?
3. 
---
**Mental Model:**
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: palindromic_number?(34543)
  -  Output: true
-  Example 2
  -  Inputs: palindromic_number?(123210)
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
No structure needed.
Integer accepted as an argument.
Find a way to reverse the integer and compare it with its forwards sequence.

Algorithm
---------
Method starts, integer accepted.
Integer is then converted to string.
Stringed integer is then compared with reversed stringed integer.
Return value of comparison.

Code
----
=end

def palindromic_number?(num)
  num = '0%o' % num
  p num
  p num.to_s.reverse == num.to_s
end

palindromic_number?(34543)
palindromic_number?(123210)
palindromic_number?(22)
palindromic_number?(5)
palindromic_number?(00500500)

# further exploration
# what if number begins with one or more zeroes? will it still work?