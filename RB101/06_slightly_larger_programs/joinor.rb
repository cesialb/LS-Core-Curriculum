=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: an array
-  Output: string displaying the elements, with a joining word before the last
---
**Problem Domain:**
- joinor([1, 2]) => "1 or 2"
- joinor([1, 2, 3]) => "1, 2, or 3"
- joinor([1, 2, 3], '; ') => "1; 2; or 3"
- joinor([1, 2, 3], ', ', 'and') => "1, 2, and 3"
---
**Implicit Requirements:**
- The arguments in joinor are:
  1. The array
  2. The type of delimiter (it is ',' by default)
  3. The joining word (it is 'or' by default)
---
**Clarifying Questions:**
1.
2.
3.
---
**Mental Model:**
- Create a method that will accept an array and return a string
- The string will be the elements of the array, connected via a joining word
- The joining word is 'or' by default, but it can be changed to other words
- The string will be delimited as well
- Delimited by ', ' default, but it can be changed to other delimiters

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
- The input value is an array, along with two strings
- The output value is a string

---
Algorithm
---------
- Method accepts array and two strings as arguments
- Create return string
- Iterate through array, accessing each element
- If the accessed element is the last in the array
  - Push ' [JOINING_WORD] ' + element to string
- Else
  - Push element + delimiter to string

Code
----
=end

def joinor(arr, delim=', ', joining_word='or')
  str = ''
  arr.each do |ele|
    str << if ele == arr.first
             "#{ele}#{delim}"
           elsif ele == arr.last
             "#{joining_word} #{ele}"
           else
             "#{ele}#{delim}"
           end
  end
  str
end

p joinor([1, 2])                   # => "1 or 2"
p joinor([1, 2, 3])                # => "1, 2, or 3"
p joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
p joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"
