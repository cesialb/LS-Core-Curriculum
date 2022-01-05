=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: integer
-  Output: 2 times the number, unless it's a double number, then return the number as-is
---
**Problem Domain:**
- Double number: left-side digits == right-side digits
  ex. 44, 103103, 3333, etc.

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
- Input value is an integer
- Output value is an integer

---
Algorithm
---------
- Method accepts integer as argument
- Convert integer to string
- If string length is odd, return integer * 2
- Else,
  - Split string in half, save in two variables
  - See if left side == right side
  - if so, return integer
  - Otherwise, return integer * 2

Code
----
=end

def twice(int)
  string_int = int.to_s

  if string_int.length.even?
    boundary = string_int.length / 2

    left = string_int[0..(boundary - 1)]
    right = string_int[boundary..-1]

    if left == right
      int
    else
      int * 2
    end
  else
    int * 2
  end
end

# better solution
def twice(number)
  string_number = number.to_s
  center = string_number.size / 2
  left_side = center.zero? ? '' : string_number[0..center - 1]
  right_side = string_number[center..-1]

  return number if left_side == right_side
  return number * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10