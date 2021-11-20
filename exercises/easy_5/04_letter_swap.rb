=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: string of words, separated by spaces
-  Output: string in which in the first and last letters are swapped
---
**Problem Domain:**
---
**Implicit Requirements:**
- each string contains nothing but words and spaces
- string will always contain at least one word
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
  -  Inputs: 'Abcde'
  -  Output: 'ebcdA'
-  Example 2
  -  Inputs: 'a'
  -  Output: 'a'
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
- Input value is a string of word(s)
- Output value is a string of word(s)

---
Algorithm
---------
- Method accepts string as argument
- Helper function to swap letters
  - First letter in string = index 0
  - Last letter in string = index -1
  - Create temp variable to hold string[0]
  - string[0] = string[-1]
  - string[-1] = temp
- Split string into an array, delimited by spaces
- Iterate through array of strings and implement helper_function on each one - map method

Code
----
=end

def helper_swap(string)
  temp = string[0]
  string[0] = string[-1]
  string[-1] = temp
  string

  # in Ruby, this will work also:
  # string[0], string[-1] = string[-1], string[0]
end

def swap(string)
  new_string = string.split(' ').map {|word| helper_swap(word)}.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'