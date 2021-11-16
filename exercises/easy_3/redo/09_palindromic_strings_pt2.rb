=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: string
-  Output: return true if string is palindrome, false otherwise
    - case-insensitive!!
    - ignore all non-alphanumeric characters
---
**Problem Domain:**
---
**Implicit Requirements:**
- Case-insensitive
- Ignore all non-alphanumeric characters
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
  -  Inputs: 'madam'
  -  Output: true
-  Example 2
  -  Inputs: 'Madam, I'm Adam'
  -  Output: true (only alphanumerics matter)
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
- Input value is a string, output value is a boolean
---
Algorithm
---------
- Method accepts string as argument
- Case-insensitive => downcase the string
- Ignore non-alphanumerics
    - Create an alphanumeric array
- Reassign string to only the characters that are in that alphanumeric array
- Compare string to its reversed self

Code
----
=end

def real_palindrome?(string)
  alphanumerics = ('0'..'9').to_a + ('a'..'z').to_a
  edited_string = ''

  string.downcase.chars.each do |letter|
    edited_string << letter if alphanumerics.include?(letter)
  end

  edited_string == edited_string.reverse
end

# better solution - uses String#delete and what looks like a regex
def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  string == string.reverse
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false