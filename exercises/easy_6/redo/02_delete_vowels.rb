=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: array of strings
-  Output: array with same string values, with vowels removed
---
**Problem Domain:**
- You have a string
- Return the same(?) string with all vowels deleted
- Spaces remain intact

---
**Implicit Requirements:**
- Possibly returning the same array

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
- Input and output value is an array

---
Algorithm
---------
- Method passes in array as argument
- Iterate through array, accessing each element
- Delete all vowels in element
- Return array

Code
----
=end

def remove_vowels(arr_strings)
  arr_strings.map {|word| word.delete('aeiouAEIOU')}
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']