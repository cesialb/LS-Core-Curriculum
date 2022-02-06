=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: two integers (count, starting number)
-  Output: array of integers
    - same number of elements as the count argument
    - values of each element will be multiples of starting number
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
- Input values are two integers
- Output value is an array of integers

---
Algorithm
---------
- Method passes in two integers as arguments
- Create accumulator variable, set to 0
- Create empty array
- Use times method and call it on count argument
  - Add starting number to accumulator
  - Push accumulator to array
- Return array

Code
----
=end

def sequence(count, starting_number)
  accumulator = 0
  sequence_array = []

  count.times do 
    accumulator += starting_number
    sequence_array << accumulator
  end

  sequence_array
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []