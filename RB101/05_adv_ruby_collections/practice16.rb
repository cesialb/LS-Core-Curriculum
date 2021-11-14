=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: Nothing
-  Output: a method that returns one UUID when called w/no parameters
---
**Problem Domain:**
---
**Implicit Requirements:**
---
- The method returns the string

**Clarifying Questions:**
1. What is a UUID?
  - an identifier used to uniquely identify items
  - done with massive randomization - very rare chance for two items to overlap
  - 32 hexadecimal characters, broken in 5 sections like 8-4-4-4-12, represented as a string
2. Will this involve massive randomization?
3. What type of characters can a UUID hold?
  - Hexadecimal: '0'-'9' and 'a'-'f'
---
**Mental Model:**
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: UUID_maker()
  -  Output: f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91
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
- The final output value is a string
- It may be best to create 8-char, 4-char, 4-char, 4-char, and 12-char arrays, then join with '-' as the delimiter

Algorithm
---------
- Create the empty arrays
- Create the range of characters for the randomization
- For the length of each particular array, randomize and choose a char to push to the empty array
- Once complete, join the individual arrays so they will form their strings
- Then join the five strings via the '-' as delimiter

Code
----
=end

def UUID_maker()
  eight_char = []
  four_char1 = []
  four_char2 = []
  four_char3 = []
  twelve_char = []
  hex_range = ('0'..'9').to_a + ('a'..'f').to_a
  
  8.times do 
    char = hex_range.sample
    eight_char << char
  end

  4.times do 
    char = hex_range.sample
    char2 = hex_range.sample
    char3 = hex_range.sample

    four_char1 << char
    four_char2 << char2
    four_char3 << char3
  end

  12.times do
    char = hex_range.sample
    twelve_char << char
  end

  eight_char = eight_char.join('')
  four_char1 = four_char1.join('')
  four_char2 = four_char2.join('')
  four_char3 = four_char3.join('')
  twelve_char = twelve_char.join('')

  return eight_char + '-' + four_char1 + '-' + four_char2 + '-' + four_char3 + '-' + twelve_char

end


p UUID_maker()

# better solution

def generate_UUID
  characters = []
  (0..9).each {|digit| characters << digit.to_s }
  ('a'..'f').each {|digit| characters << digit }

  sections = [8, 4, 4, 4, 12]
  uuid = ''

  sections.each_with_index do |section, index|
    section.times { uuid += characters.sample }
    uuid += '-' unless index >= sections.size - 1
  end

  uuid
end

p generate_UUID