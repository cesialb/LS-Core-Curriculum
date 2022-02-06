=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: string
-  Output: same premise, but non-alphabetic characters don't toggle the desired case
---
**Problem Domain:**
- You have a string
- Every other character should be capitalized in the new string
- But this time, non-alphabetic characters are fully ignored (toggling as well)
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
- Create empty string
- Set upper flag to true
- Break string into array of characters, iterate through it - each method
  - If the character is an alphabetic character:
    - If the upper flag is true, push the uppercase version to string
      - Set flag to !flag
    - If the upper flag is false, push the downcase version to string
      - Set flag to !flag
  - If the character is any other type of character:
    - Push character to string

Code
----
=end

def staggered_case(string)
  result = ''
  need_upper = true

  string.chars.each do |char|
    if char =~ /[a-zA-Z]/
      if need_upper
        result += char.upcase
      else
        result += char.downcase
      end
      need_upper = !need_upper
    else
      result += char
    end
  end
  result
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'