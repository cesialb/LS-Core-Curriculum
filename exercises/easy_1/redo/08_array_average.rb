=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: array of integers
-  Output: average of all numbers in array
---
**Problem Domain:**
---
**Implicit Requirements:**
- Array will never be empty
- Numbers will always be positive
- Result should be an integer - integer division only
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
  -  Inputs: average[1, 6]
  -  Output: 3 (integer division)
-  Example 2
  -  Inputs: [1, 5, 87, 45, 8, 8]
  -  Output: 25
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
- Input value is an array of integers
- Output value is an integer
---
Algorithm
---------
- Method accepts array as argument
- Find method to collect sum of every element in array
- Divide sum by the size of the array

Code
----
=end

def average(arr)
  arr.reduce(:+) / arr.size
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

# further exploration

def average_float(arr)
  arr.reduce(:+) / (arr.size.to_f)
end

puts average_float([1, 6]) # works!

