=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: string
-  Output: new string
  - every consonant character is doubled, everything else should be not doubled
---
**Problem Domain:**
---
**Implicit Requirements:**
---
**Clarifying Questions:**
1. What is 'everything else'?
  - Vowels, digits, punctuation, whitespace
2.
3.
---
**Mental Model:**
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: 'String'
  -  Output: 'SSttrrinngg'
-  Example 2
  -  Inputs: "Hello-World!"
  -  Output: "HHellllo-WWorrlldd!"
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
- Output value is a new string

---
Algorithm
---------
- Method accepts string as argument
- Create consonants array
- Begin iterating through each character of the string
  - IF the character is a consonant, push two instances of the character to the new string
  - ELSE push the character undoubled
- Regex for consonants only, without vowels = [a-z&&[^aeiou]]

Code
----
=end

def double_consonants(str)
  str.chars.each_with_object('') do |char, new_str|
    if char.downcase =~ /[a-z&&[^aeiou]]/
      new_str << char << char
    else
      new_str << char
    end
  end
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""