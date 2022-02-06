=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: two arrays
-  Output: new array containing all elements from both, alternating
---
**Problem Domain:**
- Arrays are of the same size

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
- Input values are two arrays of same size
- Output value is a new array

---
Algorithm
---------
- Method passes in two arrays as arguments
- Create empty array
- Create index, set to 0
- Use times method and call it on the size of array 1
  - Push array1[index] to new array
  - Push array2[index] to new array
  - Increment index by 1
- Return new array

Code
----
=end

def interleave(arr1, arr2)
  new_arr = []
  index = 0

  arr1.size.times do 
    new_arr << arr1[index]
    new_arr << arr2[index]
    index += 1
  end
  new_arr
end

# better solution
def interleave(array1, array2)
  result = []
  array1.each_with_index do |element, index|
    result << element << array2[index]
  end
  result
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']