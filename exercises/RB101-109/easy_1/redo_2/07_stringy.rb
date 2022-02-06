=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: positive integer
-  Output: string of alternating 1s and 0s, length of string matching the integer
---
**Problem Domain:**
- 
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
- Input value is a positive integer
- Output value is a string

---
Algorithm
---------
- Method passes in integer as argument
- Loop forever:
  - Add '1' to new string
  - Check if string size is equal to integer 
    - If so, break
  - Add '0' to new string
  - Check if string size is equal to integer
    - If so, break
- Once broken out of loop, return string

Code
----
=end

def stringy(int)
  str = ''
  return str if int == 0
  
  loop do
    str << '1'
    break if str.size == int
    str << '0'
    break if str.size == int
  end
  
  str
end

# another solution
def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end

puts stringy(0)
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'