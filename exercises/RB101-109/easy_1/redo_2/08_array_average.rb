=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: array of integers
-  Output: average of all numbers in array
---
**Problem Domain:**
- Array will never be empty, and it will always contain positive integers only
- Result should be an integer as well
---
**Implicit Requirements:**
- Using integer division for average calculation
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
- Input value is a 1D array of integers
- Output value is an integer

---
Algorithm
---------
- Method passes in array as argument
- Create sum variable, and iterate through array, adding each element to sum
- Divide sum by array size, return average

Code
----
=end

def average(arr)
  arr.reduce(:+) / arr.size
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40