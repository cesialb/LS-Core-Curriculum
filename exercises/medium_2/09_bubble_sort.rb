=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: array
-  Output: mutated sorted array, using bubble sort
---
**Problem Domain:**
- Bubble sort:
  - Iterate through the array
  - Each pair of consecutive elements is compared
  - If the first element is greater than the second, swap them
  - This goes on and on until there isn't a swap. The array is sorted
  - Inefficient algorithm but it's a good one for learning
---
**Implicit Requirements:**
- Array contains at least two elements
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
- Input value is an array of values
- Output value is the same array
---
Algorithm
---------
- Get an index counter, set to 1
- Iterate through the array, accessing each element and index
  - If element at index 0 is larger than element at index counter, swap them

Code
----
=end

# couldn't figure it out :(

def bubble_sort!(array)
  loop do
    swapped = false
    1.upto(array.size - 1) do |index|
      next if array[index - 1] <= array[index]
      array[index - 1], array[index] = array[index], array[index - 1]
      swapped = true
    end
    
    break unless swapped
  end
  nil
end

array = [5, 3]
p bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
p bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)