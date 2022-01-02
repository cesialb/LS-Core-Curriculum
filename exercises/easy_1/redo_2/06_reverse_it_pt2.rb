=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: string containing one or more words
-  Output: given string, with words containing 5+ chars reversed
---
**Problem Domain:**
- Take a string and reverse every word that is 5 characters or longer
---
**Implicit Requirements:**
- Returning original string, not new
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
- Output value is the same string
---
Algorithm
---------
- Method passes in string as argument
- Split string into words and create an array out of them
- Iterate through array, accessing every element
  - If the word is 5 characters or longer, reverse it
  - If it isn't, do nothing
- Rejoin string and return it

Code
----
=end

def reverse_words(str)
  new_str = str.split.map do |word|
    if word.length >= 5
      word.reverse
    else
      word
    end
  end
  new_str.join(' ')
end

# another solution
def reverse_words(string)
  words = []

  string.split.each do |word|
    word.reverse! if word.length >= 5
    words << word
  end

  words.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS