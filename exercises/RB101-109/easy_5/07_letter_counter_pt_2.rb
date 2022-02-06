=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: string of words
-  Output: modified word_sizes method from previous exercise
  - exclude non-letters this time
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
  -  Inputs: 'Four score and seven.'
  -  Output: {3 => 1, 4 => 1, 5 => 2}
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
- Modify word_sizes:
  - Create a hash, default all values to 0
  - Split string into array of strings
  - Iterate through array
    - Delete all non-alphabetic characters
  - Join array back into string
  - Run through the word_sizes iteration once again

Code
----
=end

def word_sizes(string)
  counts = Hash.new(0)
  edited_string_arr = string.split.map{|word| word.delete('^[a-z]^[A-Z]')}

  edited_string_arr.each do |word|
    counts[word.length] += 1
  end

  counts
end

# slightly better solution - delete word while in iteration
def word_sizes(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    clean_word = word.delete('^A-Za-z')
    counts[clean_word.size] += 1
  end
  counts
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}