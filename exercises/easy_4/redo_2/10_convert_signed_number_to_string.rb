=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: integer
-  Output: string representation of that integer
---
**Problem Domain:**
- Can use integer_to_string from previous exercise
- Can't use #to_s, String(), etc.
- This method must be able to represent signed numbers

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
---
Algorithm
---------
- Method passes in integer as input
- If integer is less than 0:
  - '-' + integer_to_string(int)
- Else
  - integer_to_string(int)

Code
----
=end

# helper method
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

# main method
def signed_integer_to_string(number)
  if number < 0
    '-' + integer_to_string(number.abs)
  elsif number > 0
    '+' + integer_to_string(number)
  else
    integer_to_string(number)
  end
end

# another solution - using spaceship method
def signed_integer_to_string(number)
  case number <=> 0
  when -1 then "-#{integer_to_string(-number)}"
  when +1 then "+#{integer_to_string(number)}"
  else         integer_to_string(number)
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'