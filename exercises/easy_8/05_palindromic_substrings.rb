=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: string
-  Output: a list of all palindromic substrings from within that string
---
**Problem Domain:**
- Use the substrings method from the previous exercise.
- Duplicate palindromes can be included.
- Return value should be returned in the same sequence as the substrings appear in the string
---
**Implicit Requirements:**
---
**Clarifying Questions:**
1. What's a palindrome in this case?
  - Consider all characters
  - Case matters
  - Single characters are not palindromes
2. What happens if non-strings are entered? Will it certainly be a string?
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
- Method accepts string as argument
- Use the substrings method to obtain an array of all substrings within the string
- Utilize select method to select for substrings (larger than 1!) that are palindromes
- Return that array

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

def palindromes(string)
  substrings(string).select do |substring|
    substring == substring.reverse if substring.size > 1    # could be a method! determining palindrome
  end
end

# further exploration - ignore non-alphanumeric characters and case

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