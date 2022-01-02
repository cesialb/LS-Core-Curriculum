=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: time of day in 24 hr format
-  Output: number of minutes before and after midnight
---
**Problem Domain:**
- Input value is a string
- There will be two methods, after_midnight and before_midnight
- Both methods should return 0..1439
- Can't use Date and Time methods

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
- Input value is a string
- Output value is an integer

---
Algorithm
---------
- Create both methods, passing in string as argument
- After midnight method:
  - Split the string by the ':' as delimiter - now have an array of two strings
  - Convert the two strings to integers
  - Multiply first number by 60, then add it to second number
  - This gives the number of minutes
  - Minutes % 1440 (constant) should give answer
- Before midnight method:
  - Same process as after_midnight
  - Once minutes are acquired
Code
----
=end

MINUTES_IN_DAY = 1440

def after_midnight(time_str)
  time_array = time_str.split(':').map(&:to_i)
  minutes = (time_array[0] * 60) + time_array[1]
  minutes % MINUTES_IN_DAY
end

def before_midnight(time_str)
  time_array = time_str.split(':').map(&:to_i)
  minutes = (time_array[0] * 60) + time_array[1]
  return minutes if minutes == 0
  MINUTES_IN_DAY % minutes
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0