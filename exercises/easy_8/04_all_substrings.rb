=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: string
-  Output: list of all substrings in a string
  - list should be ordered by where in the string the substring begins
    - ??? 
      - all substrings that start at position 0 should be first, then position 1, 2, etc..
---
**Problem Domain:**
- Should use the leading_substrings method from previous exercise:
  - Method accepts a string
   - Build a list of substrings beginning at position 0
   - Build a list of substrings beginning at position 1
   - so on...
   - Stop once all positions have been accessed
---
**Implicit Requirements:**
---
**Clarifying Questions:**
1. Can the string be mutated in any way? Remaining intact?
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
- Input value is a string
- Output value is a one-dimensional array

---
Algorithm
---------
- Method accepts string as argument
- Create result_array, make it empty
- Begin looping 
  - result_array << leading_substrings(string)
  - Get rid of the first character in string
- Break when string is empty

Code
----
=end

def leading_substrings(string)
  running_total = ''
  string.chars.each_with_object([]) do |letter, arr|
    running_total += letter
    arr << running_total
  end
end

def substrings(string)
  result_array = []
  loop do
    result_array << leading_substrings(string)
    string.slice!(0)
    break if string.empty?
  end

  result_array.flatten
end

p substrings('abcde') 