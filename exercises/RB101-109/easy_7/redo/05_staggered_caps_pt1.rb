=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: string
-  Output: new string, containing original value, with staggered capitalization scheme
      - every other character is capitalized, rest are lowercase
      - non-letters should not be changed, but they count as characters when switching

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
- Method passes in string as argument
- Set capitalization flag to true
- Break string into an array of characters, iterate through it (map method)
  - If capitalization flag is true
    - Transform value to uppercase version
  - If it's not,
    - Value is original value
  - Set capitalization flag to !capitalization
- Join array

Code
----
=end

def staggered_case(string)
  
  capitalize = true

  staggered_characters = string.chars.map do |char|
    if capitalize
      capitalize = !capitalize
      char.upcase
    else
      capitalize = !capitalize
      char.downcase
    end
  end

  staggered_characters.join
end

# string-only solution
def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'