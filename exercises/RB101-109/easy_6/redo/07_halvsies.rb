=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: array
-  Output: two arrays containing first and second half of OG array, respectively
---
**Problem Domain:**
- If the OG array contains odd number of elements, middle element should be in first array
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
- Input value is an array
- Output values are two nested arrays

---
Algorithm
---------
- Method passes in array as argument
- If # of elements are even:
  - Get boundary by dividing array size by 2
  - Put first element to boundary into array 1
  - Put boundary+1 element to last into array 2
  - Nest the arrays, return
- If # of elements are odd:
  - Get boundary by dividing array size by 2, then adding 1
  - First element to boundary into array
  - Put boundary+1 element to last into array 2
  - Nest the arrays, return

Code
----
=end

def halvsies(arr)
  
  array1 = []
  array2 = []

  # if elements are even
  if arr.size.even?
    boundary = (arr.size / 2) - 1
    array1 = arr[0..boundary]
    array2 = arr[(boundary+1)..arr.last]
  else
    boundary = arr.size / 2
    array1 = arr[0..boundary]
    array2 = arr[(boundary)..arr.last]
  end
  p array2
  [array1, array2]
end

# couldn't figure it out :(
def halvsies(array)
  middle = (array.size / 2.0).ceil
  first_half = array.slice(0, middle)
  second_half = array.slice(middle, array.size - middle)
  [first_half, second_half]
end

p halvsies([1, 2, 3, 4]) #== [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) #== [[1, 5, 2], [4, 3]]
p halvsies([5]) #== [[5], []]
p halvsies([]) #== [[], []]