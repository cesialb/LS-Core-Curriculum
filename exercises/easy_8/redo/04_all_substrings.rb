=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: string
-  Output: array of all substrings in the string
---
**Problem Domain:**
- Return value should be ordered by where in the string the substring begins
  - Substrings starting at position 0 should be first, then 1, etc.
- You can use leading_substrings method from previous exercise
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
  -  Inputs: 'abcde'
  -  Output: ['a', 'ab', 'abc', 'abcd', 'abcde', 'b', 'bc', 'bcd', ... ]
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
- Method passes in string as argument
- Create all_substrings array, make it empty
- Create index variable, set to 0
- Loop until counter is equal to length of string
  - Starting at index [index] of string, call leading_substrings - save as substring_array
  - Push substring_array to all_substrings
  - Increment index by 1
- Flatten all_substrings and return it

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

def substrings(string)
  all_substrings = []
  index = 0

  while index != string.length
    substring_array = leading_substrings(string[index..-1])
    all_substrings << substring_array
    index += 1
  end

  all_substrings.flatten
end

# better solution - no need for index variable or flatten method
def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end
  results
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]