=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: string and a positive integer
-  Output: printing string positive integer times
---
**Problem Domain:**
---
**Implicit Requirements:**
- Integer cannot be 0 or lower
- String can be empty
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
  -  Inputs: 'Hello', 3
  -  Output: 'Hello' 'Hello' 'Hello'
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
- Input values are string and positive integer
- Output value will be string printed as output
---
Algorithm
---------
- Method passes in string and positive integer as argument
- Loop positive_integer times
  - Print string one at a time on new lines

Code
----
=end

def repeat(string, int)
  1.upto(int) { puts string }
end

# another solution, possibly better

def repeat(string, int)
  int.times do
    puts string
  end
end

repeat('Hello', 3)
