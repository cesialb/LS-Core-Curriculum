=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: none
-  Output: all odd numbers 1 to 99 inclusive, each one on a separate line
---
**Problem Domain:**
---
**Implicit Requirements:**
---
1. Integers only
2. Include 1 and 99
3. Odd numbers only

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
No data structure needed
---
Algorithm
---------
START
Iterate through a range of 1 to 99
If number % 2 != 0, PRINT number
If not, NEXT to next iteration
END

Code
----
=end

(1..99).each do |num|
  Kernel.puts(num) if num % 2 != 0
end

(1..99).each do |num|
  Kernel.puts(num) if num.odd?
end