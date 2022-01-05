=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: string
-  Output: hash containing 3 keys
    1) number of characters that are lowercase
    2) number of characters that are uppercase
    3) number of characters that are neither
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
- Output value is a hash with three key-value pairs
---
Algorithm
---------
- Method passes in string as arguments
- Create empty hash, set to 0
- Build uppercase and lowercase array to check characters

- Break string into character array, iterate through it
  - If the character is lowercase, add 1 to hash[lowercase]
  - If the character is uppercase, add 1 to hash[uppercase]
  - Else, add 1 to hash[neither]
- Return hash

Code
----
=end

def letter_case_count(string)
  count_hash = {}
  count_hash[:uppercase] = 0
  count_hash[:lowercase] = 0
  count_hash[:neither] = 0

  uppercase = ('A'..'Z').to_a
  lowercase = ('a'..'z').to_a

  string.chars.each do |char|
    if uppercase.include?(char)
      count_hash[:uppercase] += 1 
    elsif lowercase.include?(char)
      count_hash[:lowercase] += 1 
    else
      count_hash[:neither] += 1
    end
  end
  
  count_hash
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }