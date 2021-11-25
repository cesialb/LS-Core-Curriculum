=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: two arrays
-  Output: new array containing all elements from both array arguments
    - elements taken in alternation
---
**Problem Domain:**
- Create a method that takes in two arrays as arguments, returning a 
  new array, whose elements are alternating from the original two arrays.
- Both arrays are non-empty, and have the same number of elements.
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
  -  Inputs: interleave([1, 2, 3], ['a', 'b', 'c'])
  -  Output: [1, 'a', 2, 'b', 3, 'c']
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
- Method accepts arrays as arguments
- Create new array to hold alternating elements
- Begin looping sequence - number of times == size of an array
  - Access index of each array
  - Push one arr1 element at that index, then one arr2 element at that index, to new array
  - Continue until the # of times looped == array size
- Return new array

Code
----
=end

def interleave(arr1, arr2)
  new_arr = []
  index = 0
  loop do
    new_arr << arr1[index] << arr2[index]
    index += 1
    break if index >= arr1.size
  end
  new_arr
end

# cleaner solution
def interleave(array1, array2)
  result = []
  array1.each_with_index do |element, index|
    result << element << array2[index]
  end
  result
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']