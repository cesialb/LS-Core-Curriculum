=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: string displaying time of day in HH:MM format
-  Output: one method showing the minutes before midnight, another showing the minutes after midnight
---
**Problem Domain:**
---
**Implicit Requirements:**
- May not use Ruby's Date and Time methods
- DST and Standard Time, etc not relevant here
- Both methods should return a value in the range 0..1439
- Value: the number of minutes is positive => time is after midnight. Negative => time before midnight
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
  -  Inputs: after_midnight('24:00')
  -  Output: 0
-  Example 2
  -  Inputs: before_midnight('24:00')
  -  Output: 0
---
_Your Test Cases:_
-  Example 3
  -  Inputs: after_midnight('12:34')
  -  Output: 754
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
- after_midnight
  - Method accepts string as argument
  - How to get the hours and minutes from this string?
    - Split the string with ':' as the delimiter, and convert to integers
    - Save first as hours, second as minutes
    - Multiply hours by 60 (constant var), then add to minutes
      - Ex. 12:34 is a bit past noon: 754 minutes after midnight
  - Minutes % 1440 (constant var) - the remainder is the answer
- before_midnight
  - Method accepts string as argument
  - Get the hours and minutes as in after_midnight
  - Ex. 12:34 is a bit past noon: 686 minutes before midnight
  - 1440
Code
----
=end

MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = 1440

def after_midnight(time)
  time_array = time.split(':').map(&:to_i)
  hours = time_array[0] * MINUTES_PER_HOUR
  minutes = time_array[1]
  int_time = hours + minutes
  result = int_time % MINUTES_PER_DAY
end

# cleaner after_midnight()
def after_midnight(time_str)
  hours, minutes = time_str.split(':').map(&:to_i)
  (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
end

def before_midnight(time)
  time_array = time.split(':').map(&:to_i)
  hours = time_array[0] * MINUTES_PER_HOUR
  minutes = time_array[1]
  int_time = hours + minutes

  if int_time == MINUTES_PER_DAY || int_time == 0
    return 0
  end

  result = MINUTES_PER_DAY % int_time
end

# cleaner before_midnight()
def before_midnight(time_str)
  delta_minutes = MINUTES_PER_DAY - after_midnight(time_str)
  delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
  delta_minutes
end


p after_midnight('00:00') == 0
p after_midnight('12:34') == 754
p after_midnight('24:00') == 0
p before_midnight('00:00') == 0
p before_midnight('12:34') == 686
p before_midnight('24:00') == 0