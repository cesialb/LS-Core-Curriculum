=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: two arrays, both containing numbers
-  Output: new array, containing product of each pair of numbers at same index
---
**Problem Domain:**
- Two arrays that hold the same number of elements are brought into the method
- Create a new array, whose elements are the product of each pair of numbers at corresponding indices
---
**Implicit Requirements:**
- The arrays brought in are all holding either integers or floating-point numbers
---
**Clarifying Questions:**
1. Will the arrays always be one-dimensional?
2. 
3.
---
**Mental Model:**
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: [3, 5, 7], [9, 10, 11]
  -  Output: [27, 50, 77]
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
- Input values are two arrays
- Output value is one array
---
Algorithm
---------
- Method accepts two arrays as arguments
- Create empty array
- Iterate through one of the array arguments, accessing the elements and index
  - Push the product of arr1[index] * arr2[index] to the empty array
- Return empty array

Code
----
=end

def multiply_list(arr1, arr2)
  new_arr = []

  arr1.each_with_index do |ele, idx|
    new_arr << (ele * arr2[idx])
  end

  new_arr
end

# further exploration - using Array#zip
def multiply_list(arr1, arr2)
  arr1.zip(arr2).map {|pair| pair.inject(:*) }
end
p multiply_list([3, 5, 7], [9, 10, 11]) #== [27, 50, 77]