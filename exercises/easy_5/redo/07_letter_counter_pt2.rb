=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: string of words
-  Output: hash that shows number of words of different sizes 
---
**Problem Domain:**
- Like the previous exercise, but exclude non-letters when determining size
  Ex. 'it's' is 3, not 4
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
- Create new hash and set all values to 0
- Delete all non-alphabetic characters from string, then split into character array
- Iterate through array
  - hash[word.length] += 1
- Return the hash

Code
----
=end

def word_sizes(string)
  word_hash = Hash.new(0)

  edited_string = string.delete("^a-zA-Z", "^ ")
  
  edited_string.split.each do |word|
    word_hash[word.length] += 1
  end
  word_hash
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}