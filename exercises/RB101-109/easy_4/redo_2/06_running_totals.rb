=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: array of numbers
-  Output: array with same number of elements, but each element has running total from OG array
---
**Problem Domain:**
- You have an array of numbers
- Return another array whose elements display the running total from OG array elements
---
**Implicit Requirements:**
- Empty array will return an empty array

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
- Input value is an array of integers, or empty array
- Output value is an array of integers, or empty array
---
Algorithm
---------
- Method passes in array of numbers as argument
- Create accumulator variable, set to 0
- Create empty array
- Iterate through original array, accessing each element
  - Add element to accumulator, push sum to empty array
- Return new array

Code
----
=end

def running_total(arr)
  accumulator = 0
  running_arr = []

  arr.each do |ele|
    accumulator += ele
    running_arr << accumulator
  end

  running_arr
end

# more idiomatic solution
def running_total(array)
  sum = 0
  array.map {|value| sum += value }
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []