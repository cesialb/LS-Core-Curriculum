=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: integer
-  Output: array of all integers in sequence, from 1 to that argument
---
**Problem Domain:**
- Method takes in an integer, and we return an array holding elements from 1 to integer
- From 1 to integer => integer will have to be larger or equal to 1
---
**Implicit Requirements:**
- Integer seems to have to be equal to or larger than 1 for this method to work
- Edge case of 0 or less isn't shown
---
**Clarifying Questions:**
1. What happens when the integer passed in is less than 1? Empty array?
2.
3.
---
**Mental Model:**
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: 5
  -  Output: [1, 2, 3, 4, 5]
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
- Input value is an integer, almost certainly a positive one
- Output value is an array of integers

---
Algorithm
---------
- Method accepts integer as argument
- Create empty array
- Iterate from 1 up to that integer, accessing each number
  - Push each number to the array
- Return the array

Code
----
=end

def sequence(int)
  arr = []
  1.upto(int) { |num| arr << num }
  arr
end

# cleaner solution
def sequence(number)
  (1..number).to_a
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]

# further exploration - if the argument is not greater than 0?
def sequence_fur_ex(number)
  number <= 0 ? [] : (1..number).to_a
end

p sequence_fur_ex(-1)
p sequence_fur_ex(0)
p sequence_fur_ex(5)