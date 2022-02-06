=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: positive integer or zero
-  Output: string representation of the integer
---
**Problem Domain:**
---
**Implicit Requirements:**
- Number will be a positive integer or zero
- Cannot use any of the standard conversion methods in Ruby
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
  -  Inputs: 4321
  -  Output: '4321'
-  Example 2
  -  Inputs: 0
  -  Output: '0'
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
- Input value is a positive integer, or zero
- Output will be a string
---
Algorithm
---------
- Can use a digits hash to hold the string representation for integer values
- How to break down integer into its individual numbers?
- Divide by 10?
  4321 / 10 = 432 remainder 1
  432 / 10 = 43 remainder 2
  43 / 10 = 4 remainder 3
  4 / 10 = 0 remainder 4

  The remainders are the digits (4, 3, 2, 1)
- Create a loop that divides the input by 10
- Assign that answer as the next value to be divided by 10
- Append the remainder to an array
- Set it to break when the value == 0
- When done, there should be the individual numbers 'in' the integer

- Use the digits hash to select/convert the array of integers into an array of strings
- Join the array and return the string value

Code
----
=end

def integer_to_string(int)
  value = int
  int_array = []

  loop do
    int_array << value % 10
    value /= 10
    break if value == 0
  end

  string_int = int_array.reverse.join('')
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'