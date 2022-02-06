=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: string
-  Output: true if string is a palindrome, false otherwise
---
**Problem Domain:**
---
**Implicit Requirements:**
- case matters
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
  -  Inputs: 'Madam'
  -  Output: false
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

def palindrome?(string)
  string == string.reverse
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true

# further exploration - whether a collection is palindromic or not
def array_palindrome?(collection)
  collection == collection.reverse
end