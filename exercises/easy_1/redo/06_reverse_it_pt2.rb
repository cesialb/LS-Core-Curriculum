=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: string containing one or more words
-  Output: returns the string with words 5+ chars reversed
---
**Problem Domain:**
---
**Implicit Requirements:**
- Spaces should be included only when more than one word is present
- Empty strings will result in an empty return string
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
  -  Inputs: Professional
  -  Output: lanoisseforP
-  Example 2
  -  Inputs: Walk around the block
  -  Output: Walk dnuora the kcolb
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
- Input value is a string, return value is a string
---
Algorithm
---------
- Method accepts string as argument
- Split string into an array of words 
  - if it is just a one-word string, it will be a one-element array
- Iterate through array, accessing each word
    - If word is 5 chars or more, reverse it
    - If not, do nothing
- Turn array back into a string

Code
----
=end

def reverse_words(string)
  string.split.each {|word| word.reverse! if word.length > 5}.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS