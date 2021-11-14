=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: integer
-  Output: string representation of that integer
---
**Problem Domain:**
---
**Implicit Requirements:**
- Must be able to represent negative numbers as well
  - 4321 => '+4321'
  - -123 => '-123'
  - 0 == '0'
- None of the standard conversion methods are allowed
- Can use integer_to_string
---
**Clarifying Questions:**
1. Does zero not have a positive sign on it?
  - It does not
2. 
3.
---
**Mental Model:**
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: 4321
  -  Output: '+4321'
-  Example 2
  -  Inputs: -123
  -  Output: '-123
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
- Integer as input, string as output
- Already have the method for converting integer to string
---
Algorithm
---------
- Positive numbers must have a positive sign
- Negative numbers must have a negative sign
- Zero is the only number that has no sign



Code
----
=end

def integer_to_string(int)
  value = int
  int_array = []

  loop do
    int_array << value % 10
    value /= 10
    break if value == 0
  end

  string_int = int_array.reverse.join('')
end

def signed_integer_to_string(number)
  if number < 0
    '-' + integer_to_string(-number)
  elsif number > 0
    '+' + integer_to_string(number)
  else
    integer_to_string(number)
  end
end

# better solution
def signed_integer_to_string(number)
  case number <=> 0
  when -1 then "-#{integer_to_string(-number)}"
  when +1 then "+#{integer_to_string(number)}"
  else             integer_to_string(number)
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'