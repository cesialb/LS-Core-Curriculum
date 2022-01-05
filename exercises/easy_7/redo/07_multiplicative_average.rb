=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: array of integers
-  Output: console output:
           product of all integers, divided by array size, rounded to three decimal places
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
- Input value is an array of integers
- Output value is a floating point number

---
Algorithm
---------
- Method passes in array as argument
- Use reduce method to find product
- Divide product by array size, converted to floating point
- Print result rounded to three decimal places - format method

Code
----
=end

def show_multiplicative_average(arr)
  product = arr.reduce(:*) / arr.size.to_f

  sprintf("%.3f", product)
end

p show_multiplicative_average([3, 5])                # => The result is 7.500
p show_multiplicative_average([6])                   # => The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667