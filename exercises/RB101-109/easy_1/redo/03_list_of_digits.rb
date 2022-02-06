=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: positive integer
-  Output: an array holding the list of digits in the number
---
**Problem Domain:**
---
**Implicit Requirements:**
- The output value has to be an array
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
  -  Inputs: digit_list(12345) == [1, 2, 3, 4, 5]
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
- Output value is an array

---
Algorithm
---------
- Method accepts integer as argument
- Convert integer to string
- Break string into characters and create an array
- Push each character into its corresponding element
- Return array

Code
----
=end

def digit_list(number)
  array = number.to_s.chars.map {|num| num.to_i }
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true