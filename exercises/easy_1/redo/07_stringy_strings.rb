=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: positive integer
-  Output: string of alternating 0s and 1s
---
**Problem Domain:**
---
**Implicit Requirements:**
- Length of string should match the given integer
- String should always start with 1
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
  -  Inputs: 6
  -  Output: 101010
-  Example 2
  -  Inputs: 4
  -  Output: 1010
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
- Method accepts positive int as argument
- Create a string and assign '1' to it
- Loop int - 1 times
  - Alternate adding 0 and 1 to the string
  - Break the loop when the string length == int
- Return the string

Code
----
=end

def stringy(num)
  string = '1'

  loop do
    string << '0'
    break if string.length == num
    string << '1'
    break if string.length == num
  end
  
  string
end

# better solution
def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end

# further exploration
  # an additional optional argument that defaults to 1
  # but if the method is called with the arg set to 0:
    # the method should return alternating 0s and 1s, not 1s and 0s

def further_stringy(size, arg=1)
  numbers = []

  size.times do |index|
    if arg == 0
      number = index.even? ? 0 : 1
      numbers << number
    else
      number = index.even? ? 1 : 0
      numbers << number
    end
  end

  numbers.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

puts further_stringy(6) == '101010'
puts further_stringy(9, 0) == '010101010'
puts further_stringy(4) == '1010'
puts further_stringy(7, 0) == '0101010'