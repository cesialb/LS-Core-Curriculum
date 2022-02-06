=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: string and a positive integer
-  Output: output of string, as many times as the inteegr indicates
---
**Problem Domain:**
---
**Implicit Requirements:**
- The integer will be a positive number
- Empty strings are permissible
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
  -  Inputs: repeat('Hello', 3)
  -  Output: Hello Hello Hello
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
- Input values are a string and positive integer
- Output value is the string, printed integer times
---
Algorithm
---------
- Method accepts string and positive integer as arguments
- Utilize integer as the value for the number of loops
- Build loop around integer, and within loop print the string

Code
----
=end

def repeat(string, int)
  int.times do
    puts string
  end
end

repeat('Hello', 3)