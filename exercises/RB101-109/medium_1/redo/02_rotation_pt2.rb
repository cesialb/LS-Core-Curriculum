=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: integer and digit
-  Output: rotated integer 
    - method is able to rotate the last n digits of a number
---
**Problem Domain:**
  - Use the rotate_array method from previous exercise
  - n will always be a positive integer
  - Rotating just one digit -> original number is returned
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
- Output value is an integer

---
Algorithm
---------
- Method passes in integer as argument
- Convert integer to string, break into an array of characters
- Slice integer array and pass -digit as an argument - mutate the original integer array
- Call rotate_array method, passing in sliced array as an argument
- Combine mutated integer array and sliced array
- Join rotated array, then convert string to integer

Code
----
=end

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(number, digits)
  number_arr = number.to_s.chars
  rotating = number_arr.slice!(-digits, digits)

  rotating = rotate_array(rotating)
  number_arr += rotating
  
  number_arr.join.to_i
end

# better solution
def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917