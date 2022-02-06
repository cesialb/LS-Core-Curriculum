=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: string with 1+ space separated words
-  Output: hash that shows number of words of different sizes
---
**Problem Domain:**
- String of words is given
- Return a hash that shows number of words of different sizes
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
- Output value is a hash

---
Algorithm
---------
- Method passes in string as argument
- Split string into an array of words
- Iterate through array of words, accessing each word
  - Word length: If the hash value exists, increase the value by 1
    - If it doesn't exist, create it and set it to 1
- Return hash

Code
----
=end

def word_sizes(string)
  word_hash = Hash.new(0)

  string.split.each do |word|
    word_hash[word.length] += 1
  end

  word_hash
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}