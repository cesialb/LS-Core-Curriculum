=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: an array of integers
-  Output: an array with same # of elements
    - each element has the running total from the original array
---
**Problem Domain:**
---
**Implicit Requirements:**
---
**Clarifying Questions:**
1. What is a running total?
  - The next element will be itself + the previous element
  - example: [2, 5, 13] --> [2, 7, 20]
2. How does this work for empty arrays?
  - Return an empty array
3.
---
**Mental Model:**
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: [14, 11, 7, 15, 20]
  -  Output: [14, 25, 32, 47, 67]
-  Example 2
  -  Inputs: [3]
  -  Output: [3]
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
- Argument will be an array
- Return value will be an array - a new array, not the original

Algorithm
---------
- Method accepts array as an argument
- Create new array = old_array, and create counter = 0
- first = old_array[counter]
- Begin iterating through the array
- second = old_array[counter + 1]
- 
Code
----
=end

def running_total(numbers)
  running = 0
  numbers.map! do |num|
    running += num
  end
end

# better solution
def running_total(array)
  sum = 0
  array.map { |value| sum += value}
end

# further exploration
def running_total(array)
  sum = 0
  new_arr = array.each_with_object([]) do |num, running_array|
    running_array << sum += num
  end
  new_arr
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []