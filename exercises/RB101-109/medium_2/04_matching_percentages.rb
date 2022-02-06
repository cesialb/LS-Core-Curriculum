=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: string
-  Output: true if the string has a balanced pair of '(' and ')', false otherwise
---
**Problem Domain:**
- To have a balanced pair: must start with a '(' 
- There must be an equal number of '(' and ')' as well
---
**Implicit Requirements:**
---
**Clarifying Questions:**
1.
2.
3.
---
**Mental Model:**
- 
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
---
Algorithm
---------
Code
----
=end

# couldn't figure it out :(

def balanced?(string)
  parens = 0
  string.each_char do |char|
    parens += 1 if char == '('
    parens -= 1 if char == ')'
    break if parens < 0
  end

  parens.zero?
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false