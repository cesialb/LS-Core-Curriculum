=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: an array
-  Output: a new array, copy of the argument array - except with the first ele now as the last ele
---
**Problem Domain:**
- Create a duplicate array that then moves the first element to the end
- Original array must remain as is
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
  -  Inputs: [7, 3, 5, 2, 9, 1]
  -  Output: [3, 5, 2, 9, 1, 7]
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
- Output value is a new array

---
Algorithm
---------
- Method accepts array as argument
- Create a new array and set it to be a duplicate of argument array
- Shift the first element, then push it 

Code
----
=end

def rotate_array(arr)
  rotated_arr = arr.dup
  element = rotated_arr.shift 
  rotated_arr.push(element)
end

# cleaner solution
def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true