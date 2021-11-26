=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: array of numbers
-  Output: sum of sums of each leading subsequence for the array
---
**Problem Domain:**
- Method accepts an array of numbers.
- Returning a sum of each leading subsequence
  - What is this?
    - Example: [3, 5, 2]
      - Returning this: (3) + (3 + 5) + (3 + 5 + 2)
---
**Implicit Requirements:**
- Array will hold either an integer or floating point number
- Array will hold at least one number
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
  -  Inputs: [1, 5, 7, 3]
  -  Output: 36
-  Example 2
  -  Inputs: [4]
  -  Output: 4
---
_Your Test Cases:_
-  Example 3
  -  Inputs: [1, 2, 3, 4, 5]
  -  Output: 35
---
_Your Edge Cases:_
-  Example 4
  -  Inputs:
  -  Output:
---
Data Structure
--------------
- Input value is an array
- Output value is a number (integer or otherwise)

---
Algorithm
---------
- Method passes in an array as argument
- Create stop variable, set to 0
- Create result variable, set to 0
- Begin loop
  - Begin iterating through array, accessing elements and idx
    - result += element
    - break when idx == stop
  - stop += 1
- Break loop when stop == arr.size

Code
----
=end

# could not figure out on first try
def sum_of_sums(numbers)
  sum_total = 0
  accumulator = 0

  numbers.each do |num|
    accumulator += num
    sum_total += accumulator
  end
  p sum_total
end

sum_of_sums([3, 5, 2])