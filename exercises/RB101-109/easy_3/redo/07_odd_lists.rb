=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: an array
-  Output: an array that contains every other element of the input array (elements 1, 3, 5, etc..)
---
**Problem Domain:**
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
  -  Inputs: [2, 3, 4, 5, 6]
  -  Output: [2, 4, 6]
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
- Output value is also an array

---
Algorithm
---------
- Method accepts array as argument
- Set new_arr to []
- Iterate through argument array, accessing each element
  - 1st, 3rd, 5th elements = index 0, 2, 4, etc....
  - If index.even? push it to new_arr
    - is zero even? --> yes
- Return new_arr

Code
----
=end

def oddities(array)
  new_arr = []
  array.each_with_index do |ele, index|
    new_arr << ele if index.even?
  end
  new_arr
end

# further exploration
  # could also use a simple loop/counter method, or each_with_object method
def evenities(array)
  new_arr = []
  array.each_with_index do |ele, index|
    new_arr << ele if index.odd?
  end
  new_arr
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []