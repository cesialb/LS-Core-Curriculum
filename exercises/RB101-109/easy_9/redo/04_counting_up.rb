=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: integer
-  Output: array of all integers, in sequence, between 1 and the argument
---
**Problem Domain:**
- Integer will always be greater than 0
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
- Input value is an integer
- Output value is an array of integer(s)

---
Algorithm
---------
- Method passes in integer as output
- Create int_array, make it empty
- Use upto method to iterate from 1 to integer
  - Push to int_array
- Return int_array

Code
----
=end

def sequence(number)
  int_array = []
  1.upto(number) { |num| int_array << num }
  int_array 
end

# cleaner solution
def sequence(number)
  (1..number).to_a
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]