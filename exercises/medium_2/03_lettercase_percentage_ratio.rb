=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: string
-  Output: hash displaying the percentage of letters that were lowercase, uppercase, neither
---
**Problem Domain:**
- Given a string, find the total number of letters in it
- Then find the number of lowercase, uppercase, and neither characters
- Build a hash displaying the percentages of each as values
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
- Output value is a hash with three symbols as keys, floats as values

---
Algorithm
---------
- Method passes in string as argument
- Save size of string
- Build hash, make all values 0
- Break string into array of characters, iterate through it
  - If this character is an uppercase, add to :uppercase
  - If this character is a lowercase, add to :lowercase
  - Else, add to :neither
- Use map method to change hash values to the percentages
- Return the hash

Code
----
=end

def letter_percentages(string)
  size = string.size
  letter_hash = { uppercase: 0, lowercase: 0, neither: 0 }

  string.chars.each do |letter|
    if letter =~ /[A-Z]/
      letter_hash[:uppercase] += 1 
    elsif letter =~ /[a-z]/ 
      letter_hash[:lowercase] += 1
    else
      letter_hash[:neither] += 1
    end
  end

  letter_hash.each { |type, number| letter_hash[type] = (number / size.to_f) * 100 }
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }