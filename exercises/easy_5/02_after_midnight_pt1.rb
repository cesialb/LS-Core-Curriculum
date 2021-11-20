=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: integer (time in minute-based format)
-  Output: string (time of day in 24hr format (hh:mm))
---
**Problem Domain:**
---
**Implicit Requirements:**
- Negative and positive inputs work here
- Number of minutes is negative => the time is before midnight
- Number of minutes is positive => the time is after midnight
- Should work with any integer input
- Cannot use Ruby's Date and Time classes
- Disregard daylight savings and standard time, etc.

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
  -  Inputs: 0
  -  Output: '00:00'
-  Example 2
  -  Inputs: -3
  -  Output: '23:57'
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
- Input value is any integer
- Output value is a string in 24hr format (hh:mm)
---
Algorithm
---------
- One day is 1440 minutes

- Method accepts integer as input
- To find out how many hours the input holds, divmod it by 60 (constant)

Code
----
=end

def time_of_day(time)
  hours, minutes = time.divmod(60)
  p hours
  p minutes
end

time_of_day(35)

# couldn't figure it out :(

# better solution
MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def normalize_minutes_to_0_through_1439(minutes)
  while minutes < 0
    minutes += MINUTES_PER_DAY
  end

  minutes % MINUTES_PER_DAY
end

def time_of_day(delta_minutes)
  delta_minutes = normalize_minutes_to_0_through_1439(delta_minutes)
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02:%02d', hours, minutes)
end
