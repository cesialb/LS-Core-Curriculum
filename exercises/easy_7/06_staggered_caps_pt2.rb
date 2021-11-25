=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: modify staggered_case from previous exercise to ignore non-alphabetic characters
-  Output:
---
**Problem Domain:**
- Non-alphabetic characters are now not counted when toggling upcase/downcase for characters
- Modify staggered_case to show this
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
  -  Inputs: 'I Love Launch School!'
  -  Output: 'I lOvE lAuNcH sChOoL!'
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
- Input value is a string, output value is a string
---

Algorithm
---------
- Method accepts string as argument
- Create new_str to hold staggered caps
- Create boolean to toggle when uppercase/lowercase is needed, and set to true

- Split string into an array of characters
- Iterate through the array, accessing every character
  - If the character is not alphabetic, push the character to new_str
  - If it is alphabetic
    - Check to see if boolean == true
      - If it is, push the upcase character to new_str
      - if it isn't, push the lowercase character to new_str
  - Set boolean to the opposite of what it was
- Return new_str

Code
----
=end

def staggered_case(string)
  new_str = ''
  need_upper = true

  string.chars.each do |char|
    if char =~ /[a-z]/i
      if need_upper
        new_str += char.upcase
      else
        new_str += char.downcase
      end
      need_upper = !need_upper
    else
      new_str += char
    end
  end
  new_str
end

p staggered_case('I Love Launch School!')