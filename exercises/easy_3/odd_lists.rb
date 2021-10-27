=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: array passed to method as argument
-  Output: returned array containing every other element of original array
---
**Problem Domain:**
---
**Implicit Requirements:**
---
1. Any type of element should work.
2. Arrays with no elements -> array of nothing returned
3. Arrays with one element -> array with one element returned
4. Values of 1st, 3rd, 5th... and so on in returned array

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
  -  Inputs: oddities([2, 3, 4, 5, 6])
  -  Output: [2, 4, 6]
-  Example 2
  -  Inputs: oddities([123])
  -  Output: [123]
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
Returned array needed.
1st element of array is index 0
3rd element of array is index 2
5th element of array is index 4
If index is even, push to new array?
Ending when the array.size is hit?

Algorithm
---------

Code
----
=end

def oddities(array)
  index = 0
  odd_array = []

  while index < array.size 
    if index.even?
      odd_array << array[index]
    end
    index += 1
  end

  odd_array
end

# further exploration
def evenities(array)
  index = 0
  even_array = []
  while index < array.size
    if index.odd?
      even_array << array[index]
    end
    index += 1
  end
  even_array
end 

def evenities(array)
  even_array = []
  array.each_with_index do |num, idx|
    even_array << num if idx.odd?
  end
  even_array
end

p oddities([2, 3, 4, 5, 6])
p oddities([123])
p oddities([])

p evenities([2, 3, 4, 5, 6, 7, 9])
p evenities([123, 123])
p evenities([])