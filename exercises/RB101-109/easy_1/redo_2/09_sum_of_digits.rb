=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: positive integer
-  Output: sum of the integer's digits
---
**Problem Domain:**
---
**Implicit Requirements:**
- Return value will be an integer, not a string
- Do not use looping constructs if you can
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
- Input value is an integer
- Output value is an integer

---
Algorithm
---------
- Method passes in integer as argument
- Convert integer to string, then split it into an array of characters
- Iterate through array, converting each element to its integer counterpart
- Sum up the elements

Code
----
=end

# hyper-idiomatic, possibly confusing
def sum(int)
  int.to_s.chars.map(&:to_i).reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45