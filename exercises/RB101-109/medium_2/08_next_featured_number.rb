=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: integer
-  Output: next featured number greater than the argument
---
**Problem Domain:**
- Featured number - odd number that's a multiple of 7, whose digits occur just once
  examples: 49 is one. 98 is not, 133 is not
---
**Implicit Requirements:**
---
**Clarifying Questions:**
1.
2.
3.
---
**Mental Model:**
- Given a number:
  - Find the next largest number that satisfies the criteria
    - Odd number
    - Multiple of 7
    - Digits of the number only appear once in the number
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
- Set bool flag to false
- Loop indefinitely until flag changes to true
  - Helper method to check for featured number
    - If it returns true, change flag
    - If not, don't
  - Increment number we're checking by 1
- Return number

Code
----
=end

def is_featured?(number)
  number.odd? && (number % 7 == 0) && one_digit?(number)
end

def one_digit?(number)
  number.to_s.chars.all? {|digit| number.to_s.chars.count(digit) == 1 }
end

def featured(number)
  loop do
    number += 1
    return number if is_featured?(number)
    break if number >= 9_876_543_210
  end

  'There is no possible number that fulfills those requirements.'
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987