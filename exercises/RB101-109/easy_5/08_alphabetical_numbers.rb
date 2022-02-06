=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: array of integers between 0 and 19
-  Output: array of same integers sorted based on the English words for that number
   zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, 
   thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen
---
**Problem Domain:**
---
**Implicit Requirements:**
- Array will hold only integers
- Integers will be b/w 0 and 19, inclusive
---
**Clarifying Questions:**
1. Does it return the same array, or a new one?
2.
3.
---
**Mental Model:**
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: alphabetic_number_sort((0..19).to_a) 
  -  Output: == [ 8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17, 6, 16, 10, 13, 3, 12, 2, 0 ]
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
- Input value is an array of integers
- Output value is an array of integers (map method, perhaps)
---
Algorithm
---------
- Method accepts an array of integers as input
- Create an array holding the English values for the numbers
- Sort the original array by the English value array
  - Using the English array's index to sort

Code
----
=end

def alphabetic_number_sort(array)
  english_array = %w(zero one two three four five six seven eight nine
                     ten eleven twelve thirteen fourteen fifteen sixteen 
                     seventeen eighteen nineteen)
  new_array = array.sort_by do |num|
    english_array[num]
  end
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

# further exploration - why not use Array#sort_by! instead of Enumerable#sort_by
  # no reason to disrupt/modify the original array
# further exploration - try to use Enumerable#sort this time

def alphabetic_number_sort(array)
  english_array = %w(zero one two three four five six seven eight nine
    ten eleven twelve thirteen fourteen fifteen sixteen 
    seventeen eighteen nineteen)

  sorted_array = array.sort {|num1, num2| english_array[num1] <=> english_array[num2]}
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]