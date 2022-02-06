=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: array of strings
-  Output: array of same values, with the vowels removed
---
**Problem Domain:**
---
**Implicit Requirements:**
---
**Clarifying Questions:**
1. Vowels?
  - a, e, i, o, u
2. Same array, or a new one?
3.
---
**Mental Model:**
- Get an array of strings, and find a way to remove the vowels from the array.
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: %w(abcdefghijklmnopqrstuvwxyz)
  -  Output: %w(bcdfghjklmnpqrstvwxyz)
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
- Input value is an array, output value is also an array.

---
Algorithm
---------
- Method accepts array as argument
- Convert array to string, and delete all vowels
- Convert string back to array, return this value

Code
----
=end

def remove_vowels(arr)
  arr.map {|element| element.delete('aeiouAEIOU')}
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

# algorithm was wrong. but realized throughout process, and reformatted idea