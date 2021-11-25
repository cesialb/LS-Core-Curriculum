=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: an array of integers
-  Output: multiply all numbers together, divide by # of array elements, print result rounded to 3 deci
---
**Problem Domain:**
- Multiplicative average:
  - Multiply all numbers of the array together
  - Divide that number by the number of array elements
  - Print the result rounded to three decimal places
- Assume the array is non-empty
---
**Implicit Requirements:**
- Not returning anything, just printing output
---
**Clarifying Questions:**
1. Just one-dimensional arrays as inputs?
2.
3.
---
**Mental Model:**
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: [3, 5]
  -  Output: 7.500
-  Example 2
  -  Inputs: [6]
  -  Output: 6.000
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
- Output value is a floating-point number
---

Algorithm
---------
- Method accepts array as argument
- Create product variable and set to 1
- Create helper method to produce multiplicative result
- Divide that answer by the array size - make sure it will be a floating-point number
- Print the result, rounded to three decimal places

Code
----
=end

def multiply(arr)
  product = 1
  arr.each do |num|
    product *= num
  end
  product
end

# better method for multiply
def multiply(arr)
  product = 1.to_f
  arr.each { |num| product *= num}
  product
end

def show_multiplicative_average(arr)
  product = multiply(arr)
  result = (product / arr.size)
  puts "The result is #{format('%.3f', result)}"
end

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667