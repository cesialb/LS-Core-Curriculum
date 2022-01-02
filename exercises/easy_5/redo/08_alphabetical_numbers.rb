=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: array of integers
-  Output: array of integers, sorted based on English words for those numbers
---
**Problem Domain:**
- All integers are between 0 and 19 inclusive
---
**Implicit Requirements:**
---
**Clarifying Questions:**
1. Same array or new?
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
- Input value is an array
- Output value is an array

---
Algorithm
---------
- Create constant array with English words for 0-19 as elements
- Method passes in array as argument
  - Call sort by method on array, and sort by the index of constant array
- Return array

Code
----
=end

ENGLISH_WORDS = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight',
                 'nine', 'ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 
                 'sixteen', 'seventeen', 'eighteen', 'nineteen']

def alphabetic_number_sort(array)
  array.sort_by { |num| ENGLISH_WORDS[num] }
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]