=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: string
-  Output: array of sorted substrings (sorted by length)
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
- Input value is a string
- Output value is an array of strings

---
Algorithm
---------
- Method passes in string
- Create accumulator variable, set to ''
- Create empty array
- Break string into array of characters and iterate through it
  - Add element to accumulator
  - Push accumulator to array
- Return array

Code
----
=end

def leading_substrings(string)
  accumulator = ''
  substrings = []

  string.chars.each do |char|
    accumulator += char
    substrings << accumulator
  end

  substrings
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']