=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: array
-  Output: new array with elements of original in reversed order
---
**Problem Domain:**
- You have an array
- Return a new array with OG array's elements in reversed order

---
**Implicit Requirements:**
- We are not mutating the OG array

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
- Input and output values are arrays

---
Algorithm
---------
- Method passes in array as argument
- Create duplicate array, make it empty
- Loop the size of original array
  - Push duplicate elements to dup array

- Create reversed array, make it empty
- Loop the size of the original array
  - Take last element off of duplicate, push to empty array
- Return reversed array

Code
----
=end

def reverse(arr)
  # build duplicate array of original, keep original intact
  dup_arr = []
  arr.each do |ele|
    dup_arr << ele.dup
  end

  # use duplicate array to build reversed array
  reversed_arr = []
  dup_arr.size.times do
    reversed_arr.push(dup_arr.pop)
  end

  reversed_arr
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