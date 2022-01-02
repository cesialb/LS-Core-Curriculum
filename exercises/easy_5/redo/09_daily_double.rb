=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: string
-  Output: original string with consecutive duplicate characters collapsed into a single one
---
**Problem Domain:**
- Can't use squeeze! or squeeze

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
- Create counter variable, set to 0
- Until counter variable is equal to string length:
  - Push string[counter] to empty string unless string[counter] == string[counter + 1]
- Return new string

Code
----
=end

def crunch(string)
  new_str = ''
  counter = 0

  while counter != string.length
    new_str << string[counter] unless string[counter] == string[counter + 1]
    counter += 1
  end

  new_str
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''