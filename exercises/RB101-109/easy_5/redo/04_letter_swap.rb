=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: string of words separated by spaces
-  Output: string in which first and last letters of words are swapped
---
**Problem Domain:**
- You have a string
- Swap the first and last letters of every word in the string
- String will always have at least one word

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
- Output value is a string
---
Algorithm
---------
- Method passes in string as argument
- Split string into an array of words
- Iterate through the array, accessing each word (map method)
  - If word.length > 1, then transform value to word[-1] + word[1..-2] + word[0]
Code
----
=end

def swap(string)
  string.split.map do |word| 
    if word.length > 1
     word[-1] + word[1..-2] + word[0]
    else
      word
    end
  end.join(' ')
end

# better solution
def swap_first_last_characters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(words)
  result = words.split.map do |word|
    swap_first_last_characters(word)
  end
  result.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'