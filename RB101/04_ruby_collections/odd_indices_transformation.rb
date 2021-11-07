=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: array of integers
-  Output: a new array of integers, selecting the elements that have odd indices
---
**Problem Domain:**
---
**Implicit Requirements:**
---
1. Elements are pushed to the new array only when the index is odd.
2. The returned array is new.
3. The original array must not be mutated.
4. The selected elements are doubled after successful selection.

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
  -  Inputs: [1, 4, 3, 7, 2, 6]
  -  Output: [1, 8, 3, 14, 2, 12]
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
Data structure will be an array of integers.
A new array.

Algorithm
---------
- Method accepts array of integers as argument
- Create empty new array
- Iterate through the entire argument array
- Select element with index that is odd
- Double the element
- Push element to new array
- Continue until entire array is gone through
- Return new array

Code
----
=end

def double_odd_indices(numbers)
  selected_numbers = []
  counter = 0

  numbers.each do |_|
    current_number = numbers[counter]
    current_number *= 2 if counter.odd?
    selected_numbers << current_number
    counter += 1
  end

  selected_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
p double_odd_indices(my_numbers)