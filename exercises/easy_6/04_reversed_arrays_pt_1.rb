=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: array
-  Output: the same array, with reversed elements
---
**Problem Domain:**
- Mutate the array passed into the method, reversing its elements,
  without using either of the common reverse methods.
---
**Implicit Requirements:**
- May not use Array#reverse or Array#reverse!
- The array must be the same object - check object IDs
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
  -  Inputs: [1, 2, 3, 4]
  -  Output: [4, 3, 2, 1]
-  Example 2
  -  Inputs: %w(a b e d c)
  -  Output: ['c', 'd', 'e', 'b', 'a']
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
- Input value is an array, output value is the same array.

---
Algorithm
---------


Code
----
=end

# couldn't think of an algorithm - checked solution:

def reverse!(array)
  left_index = 0
  right_index = -1

  while left_index < array.size / 2
    array[left_index], array[right_index] = array[right_index], array[left_index]
    left_index += 1
    right_index -= 1
  end

  array
end