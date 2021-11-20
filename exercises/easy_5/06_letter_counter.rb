=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: string with one or more separated words
-  Output: hash, showing the number of words of different sizes
---
**Problem Domain:**
---
**Implicit Requirements:**
- We are not ignoring punctuation
  - Def. word: any string of characters that doesn't include a space
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
  -  Output: { 3 => 1, 4 => 1, 5 => 1, 6 => 1}
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
  - Hash key: word length
  - Hash value: number of words that are that length
---
Algorithm
---------
- Method accepts string as argument
- Split string by spaces
- Create empty hash
- Iterate through array of 'words'
  - If word length is unique to the hash
    - Set value to 1, and hash[word.length] = value
  - If word length is not unique to the hash
    - Hash[word.length] = (value + 1)
- Return hash

Code
----
=end

def word_sizes(string)
  hash = {}
  string.split(' ').each do |word|
    if !(hash.key?(word.length))
      value = 1
      hash[word.length] = value
    else
      hash[word.length] += 1
    end
  end
  hash
end

# better solution - no need for a conditional
def word_sizes(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    counts[word.size] += 1
  end
  counts
end
p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}