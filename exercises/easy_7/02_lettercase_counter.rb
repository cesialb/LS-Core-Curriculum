=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: string
-  Output: 
  - hash that has three entries:
    1. # of characters in string that are lowercase
    2. # of characters in string that are uppercase
    3. # of characters in string that are neither

---
**Problem Domain:**
---
**Implicit Requirements:**
---
**Clarifying Questions:**
1. What is "neither"?
  - Not a letter! Symbols, numbers, etc.
2. Are spaces counted here?
  - Yes, they will be 'neither'
3.
---
**Mental Model:**
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: 'abCdef 123'
  -  Output: { lowercase: 5, uppercase: 1, neither; 4 }
-  Example 2
  -  Inputs: 'AbCd +Ef'
  -  Output: { lowercase: 3, uppercase: 3, neither: 2 }
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
- Output value is a hash, with symbols as keys and integers as values

---
Algorithm
---------
- Method accepts string as argument
- Split string into an array of characters
- Iterate through array of characters, accessing each element
- Need to figure out if it's a letter or not
  - Have a case for the char
    - when char == char.upcase, it is an uppercase letter
      - increment hash[uppercase] by 1
    - when char == char.downcase, it is a lowercase letter
      - increment hash[lowercase] by 1
    - else, it's neither
      - increment hash[neither] by 1
- Finish iterating and return hash

Code
----
=end

UPPERCASE_CHARS = ('A'..'Z').to_a
LOWERCASE_CHARS = ('a'..'z').to_a

def letter_case_count(str)
  counts = { lowercase: 0, uppercase: 0, neither: 0 }

  str.chars.each do |char|
    if UPPERCASE_CHARS.include?(char)
      counts[:uppercase] += 1
    elsif LOWERCASE_CHARS.include?(char)
      counts[:lowercase] += 1
    else
      counts[:neither] += 1
    end
  end
  counts
end

# using regular expressions
def letter_case_count(str)
  counts = {}
  characters = str.chars
  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:neither] = characters.count { |char| char =~ /[^a-zA-Z]/ }
  counts
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
