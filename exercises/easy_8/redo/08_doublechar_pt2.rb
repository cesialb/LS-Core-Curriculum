=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: string
-  Output: new string where every consonant is doubled
          - ignore vowels, digits, punctuation, whitespace
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
- Output value is a new string

---
Algorithm
---------
- Create constant for consonants (look up list)
- Method passes in string as argument
- Break string into array of characters and iterate through it - map method
  - If the character is found in the consonant array, return value is char + char
  - Else, return value is char
- Join array

Code
----
=end

CONSONANTS = %w(B C D F G H J K L M N P Q R S T V W X Y Z)

def double_consonants(string)
  string_arr = string.chars.map do |char|
    if CONSONANTS.include?(char.upcase)
      char + char 
    else
      char
    end
  end

  string_arr.join
end

# another solution - not using array or map method
def double_consonants(string)
  result = ''
  string.each_char do |char|
    result << char
    result << char if CONSONANTS.include?(char.downcase)
  end
  result
end


p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""