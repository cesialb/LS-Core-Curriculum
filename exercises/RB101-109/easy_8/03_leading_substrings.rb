=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: string
-  Output: an array holding a list of substrings from the original string
    - Array should be sorted from shortest to longest substring
---
**Problem Domain:**
---
**Implicit Requirements:**
---
**Clarifying Questions:**
1. What happens if the string is empty?
2.
3.
---
**Mental Model:**
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: 'abc'
  -  Output: ['a', 'ab', 'abc']
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
- Output value is an array
---
Algorithm
---------
- Method accepts string as argument
- Create running_total string variable, and final_str array variable, make both empty
- Break string into an array of characters and begin iterating through them
  - Running_total += element
  - Final_str << running_total
- Return final_str

Code
----
=end

def leading_substrings(string)
  running_total = ''
  result = []
  string.chars.each do |char|
    running_total += char
    result << running_total
  end
  result
end

# cleaner solution
def leading_substrings(string)
  running_total = ''
  string.chars.each_with_object([]) do |letter, arr|
    running_total += letter
    arr << running_total
  end
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']