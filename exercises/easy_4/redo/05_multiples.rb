=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: a number
-  Output: sum of all multiples between 1 and that number
---
**Problem Domain:**
---
**Implicit Requirements:**
- Number passed in is greater than 1
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
  -  Inputs: 10
  -  Output: 33
-  Example 2
  -  Inputs: 20
  -  Output: 98
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
- Input value is an integer, output is also an integer

---
Algorithm
---------
- Method accepts integer as argument
- Create sum variable
- Iterate, ranging from 1 to integer
  - If the num % 3 == 0 || num % 5 == 0
    - Add it to sum
- Return sum variable

Code
----
=end

def multisum(int)
  sum = 0
  1.upto(int) do |num|
    sum += num if num % 3 == 0 || num % 5 == 0
  end

  sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168