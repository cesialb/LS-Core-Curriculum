=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: string
-  Output: new string, where every uppercase letter is replaced by lowercase version
           and vice versa
---
**Problem Domain:**
- Can't use String#swapcase
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
- Method passes in string as argument
- Break string into an array of characters, iterate through it (map method)
  - If the character is found in A-Z, transform it to its lowercase version
  - If the character is found in a-z, transform it to its uppercase version
  - If the character is found in neither, leave as is

Code
----
=end

def swapcase(string)
  uppercase = ('A'..'Z').to_a
  lowercase = ('a'..'z').to_a

  string.chars.map do |char|
    if uppercase.include?(char)
      char.downcase 
    elsif lowercase.include?(char)
      char.upcase 
    else
      char
    end
  end.join
end

# better solution
def swapcase(string)
  characters = string.chars.map do |char|
    if char =~ /[a-z]/
      char.upcase
    elsif char =~ /[A-Z]/
      char.downcase
    else
      char
    end
  end
  characters.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'