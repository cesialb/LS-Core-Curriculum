=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: an array
-  Output: a new array with elements in original list in reverse order
---
**Problem Domain:**
- Do not modify the original array
- You may not use the method in previous exercise
- You may not use Array#reverse or Array#reverse!
---
**Implicit Requirements:**
---
**Clarifying Questions:**
1.
2.
3.
---
**Mental Model:**
- Create and return a new array, with the elements in the original array in reverse
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: [1, 2, 3, 4]
  -  Output: [4, 3, 2, 1]
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
- Output value is a new array
---
Algorithm
---------
- Method passes in array as argument
- Set index to -1
- Create new array
- Loop until index == -array_size
- Push index to new_array
- Decrement index by 1
- Return new array

Code
----
=end

def reverse(array)
  index = -1
  new_arr = []

  while index >= -array.size
    new_arr << array[index]
    index -= 1
  end

  new_arr
end

# different solution
def reverse(array)
  result_array = []
  array.reverse_each {|element| result_array << element}
  result_array
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true

# further exploration - try with #inject or #each_with_object
def reverse(array)
  array.each_with_object([]) { |ele, result_array| result_array.unshift(ele) }
end

p reverse([1,2,3,4])