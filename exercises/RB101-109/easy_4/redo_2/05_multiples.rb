=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: positive integer
-  Output: sum of all multiples of 3 and 5 that lie between 1 and input
---
**Problem Domain:**
- Input will be larger than 1
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
- Input value is a positive integer larger than 1
- Output value is a positive integer

---
Algorithm
---------
- Method passes in integer as input
- Create an array to hold multiples
- Find multiples of the integer by checking divisibilities by 3 and 5
  - If multiple found, push to multiple array
- Use reduce method to find sum of multiples in the array, return this value

Code
----
=end

def multisum(number)
  multiples_array = []

  1.upto(number) do |num|
    multiples_array << num if (num % 3 == 0) || (num % 5 == 0)
  end

  multiples_array.reduce(:+)
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168