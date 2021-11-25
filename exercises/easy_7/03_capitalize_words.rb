=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: string
-  Output: new string that has first character of every word capitalized, all other letters lowercase
---
**Problem Domain:**
- Returning a new string that is capitalized wrt every word, all other letters lowercase
- New string!
---
**Implicit Requirements:**
---
**Clarifying Questions:**
1. What happens when a non-alphabetical letter is the first character?
  - Return as is? What is "quoted".capitalize?
  - Capitalizing this returns what you would expect - "quoted"
2. Leaving the original string intact?
3.
---
**Mental Model:**
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: 'four score and seven'
  -  Output: 'Four Score And Seven'
-  Example 2
  -  Inputs: 'the javaScript language'
  -  Output: 'The Javascript Language'
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
- Output value is a string

---
Algorithm
---------
- Method passes in string as argument
- Split string into an array of words
- Create new array
- Iterate through array of words, accessing each word
  - Lowercase the word, then capitalize it
  - Push this to the array
- Finish iterating
- Convert array to string, with a space in between each element

Code
----
=end

def word_cap(str)
  str_arr = str.split.map do |word|
    word.capitalize
  end.join(' ')
end

# cleaner solution
def word_cap(words)
  words.split.map(&:capitalize).join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# further exploration
  # could downcase the word, then upcase it
  # could downcase the word, then reassign the first letter to its upcased form