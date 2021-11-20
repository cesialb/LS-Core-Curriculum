=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: an array
-  Output: two arrays (as a pair of nested arrays), containing first and second halves of array
---
**Problem Domain:**
- If the original array contains an odd number of elements, middle element should be in first half
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
  -  Inputs: [1, 2, 3, 4]
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
- Output value is a nested array of two arrays
---
Algorithm
---------
- Method passes in array as argument
- Set boundary = array.size / 2
- From index 0 to index boundary
  - Push elements to first_arr
- From index boundary + 1 to array.size
  - Push elements to second_arr
- Nest first_arr and second_arr
- Return it

Code
----
=end

def halvsies(arr)
  first_arr = []
  second_arr = []
  final_arr = []

  boundary = arr.size / 2.0
  index = 0

  while index < boundary
    first_arr << arr[index]
    index += 1
  end

  while index < arr.size
    second_arr << arr[index]
    index += 1
  end

  final_arr << first_arr << second_arr
end

# cleaner solution
def halvsies(arr)
  middle = (arr.size / 2.0).ceil
  first_half = array.slice(0, middle)
  second_half = array.slice(midde, array.size - middle)
  [first_half, second_half]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]