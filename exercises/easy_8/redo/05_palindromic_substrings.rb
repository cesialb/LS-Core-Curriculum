=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: string
-  Output: array of all substrings that are palindromic 
          - array should be arranged the way the substrings appear in string
          - duplicate substrings should be kept
          - use substrings method written in previous exercise
---
**Problem Domain:**
- Consider all characters, pay attention to case
- Single characters are not palindromes 

---
**Implicit Requirements:**
- Array can be empty
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
- Output value is an array

---
Algorithm
---------
- Method passes in string as argument
- Use substrings method to build an array of substrings
- Selection - iterate through substrings array, accessing each substrings
  - Select it if the length is larger than 1 and if it's the same backwards/forwards
- Return this array

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

def palindromes(string)
  substrings_arr = substrings(string)

  substrings_arr.select do |substring|
    substring.length > 1 && (substring == substring.reverse)
  end
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
