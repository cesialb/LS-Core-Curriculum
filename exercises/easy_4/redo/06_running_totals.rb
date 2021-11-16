=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: array of numbers
-  Output: array w/same number of elements
  - but each element has the running total from the original array
---
**Problem Domain:**
---
**Implicit Requirements:**
- Every number is an integer
- Empty array will result in an empty array

---
**Clarifying Questions:**
1. What is a running total?
  - Running total:
    2, 5, 13 => 2, 7, 20
      - first, first + second, first + second + third
  - Running total is 0 initially, then it takes on every element
2.
3.
---
**Mental Model:**
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: 2, 5, 13
  -  Output: 2, 7, 20
-  Example 2
  -  Inputs: 14, 11, 7, 15, 20
  -  Output: 14, 25, 32, 47, 67
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
- Input value is an array of ints, output value is an array of ints
- We are returning an array of ints - Array#map?
---
Algorithm
---------
- Method accepts array as argument
- Create running total variable, set to 0
- Begin map method for array, iterating by element
  - Element += running total
  - Running total += element
- Return array

Code
----
=end

def running_total(array)
  running_total = 0

  array.map do |ele|
    ele += running_total
    running_total = ele
  end

end

# better solution
def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []