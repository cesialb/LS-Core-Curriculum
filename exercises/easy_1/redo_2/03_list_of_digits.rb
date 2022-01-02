=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: positive integer
-  Output: list of digits in the number
---
**Problem Domain:**
- Take a positive integer and return the digits of that number.
---
**Implicit Requirements:**
- Integer can be any number above 0
- Returning an array of digits, not just the digits
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
- Input value is a positive integer
- Output value is a 1D array
---
Algorithm
---------
- Method passes in positive integer as argument
- Convert integer to string and break it into an array of its characters
- Iterate through the array and convert each string to its integer counterpart
- Return the array

Code
----
=end

def digit_list(int)
  int.to_s.chars.map {|num| num.to_i }
end

# more idiomatic
def digit_list(int)
  int.to_s.chars.map(&:to_i)
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true
