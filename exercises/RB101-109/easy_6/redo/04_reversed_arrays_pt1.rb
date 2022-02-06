=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: array
-  Output: same array, with elements reversed
---
**Problem Domain:**
- Cannot use #reverse or #reverse!
---
**Implicit Requirements:**
- Returning the same array - mutation of original

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
- Method passes in array as argument
- Insert counter set to 0
- If the array is n size, we loop n times to reverse
  - Take last element off and insert at counter
  - Increment counter by 1

- Return same array

---
Algorithm
---------
Code
----
=end

def reverse!(array)
  insert_index = 0

  (array.size).times do 
    array.insert(insert_index, array.pop)
    insert_index += 1
  end

  array
end

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true