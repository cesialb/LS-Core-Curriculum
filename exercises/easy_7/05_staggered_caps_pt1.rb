=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: string
-  Output: new string containing the original value
    - except, every other character is capitalized, and the remaining are lowercase
---
**Problem Domain:**
- Create a string that contains the characters of the old string, but whose characters alternate
  from uppercase to lowercase.
---
**Implicit Requirements:**
- Spaces count as an "alternation"
  - spaces and other characters do not count as a skip, count them as if they were alphabetic
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
  -  Output: 'I LoVe lAuNcH ScHoOl!'
-  Example 2
  -  Inputs: 'ALL_CAPS'
  -  Output: 'AlL_CaPs'
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
- Split string into an array of characters
- Iterate through the array of characters, accessing each character
- Push upcase character to new_str, then push lowercase character to new_str
- Continue until iteration is done
- Return new_str

Code
----
=end

def staggered_case(str)
  new_str = ''
  str.chars.each_with_index do |char, index|
    new_str << char.upcase if index.even?
    new_str << char.downcase if index.odd?
  end
  new_str
end

# alternate solution - relies on boolean
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

# further exploration
def staggered_case_redux(str, keyword=false)
  new_str = ''
  if keyword
    str.chars.each_with_index do |char, index|
      new_str << char.downcase if index.even?
      new_str << char.upcase if index.odd?
    end
  else
    str.chars.each_with_index do |char, index|
      new_str << char.upcase if index.even?
      new_str << char.downcase if index.odd?
    end
  new_str
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'