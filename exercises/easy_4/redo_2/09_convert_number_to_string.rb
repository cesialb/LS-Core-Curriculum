=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: positive integer or zero
-  Output: string representation of that number
---
**Problem Domain:**
- Can't use #to_s, String(), etc.
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
- Input value is an integer 0 or higher
- Output value is a string

---
Algorithm
---------
- Method passes in integer as argument
- Create hash - integer digits as keys, string digits as values
- Build integer array by % the integer by 10 until remainder is 10
- Iterate through integer array, accessing each element (map method)
  - Transform element into its hash equivalent
- Join the now-string array into the return string value

Code
----
=end

DIGITS = { 0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 
           5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9' }

def integer_to_string(number)
  int_array = []
  loop do
    number, remainder = number.divmod(10)
    int_array << remainder
    break if number == 0
  end
  
  int_array.reverse!.map! { |value| DIGITS[value] }.join
end

# another solution
def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'