=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: number
-  Output: time of day in 24 hour format (hh:mm)
---
**Problem Domain:**
- If number of minutes is positive, it is after midnight
- If number of minutes is negative, it is before midnight
- Can not use Date and Time classes
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
- Output value is a string

---
Algorithm
---------
- Method passes in integer as argument
- Create constant for number of minutes in a day
- Create constant for number of minutes in an hour
- Use divmod method to grab quotient and remainder of argument, divmod it by the constant
- Use divmod method to grab hours and minutes of time, divmod it by second constant

Code
----
=end

MINUTES_IN_DAY = 1440
MINUTES_IN_HOUR = 60

def time_of_day(time)
  quotient, remainder = time.divmod(MINUTES_IN_DAY)
  hours, minutes = remainder.divmod(MINUTES_IN_HOUR)
  
  format('%02d:%02d', hours, minutes)
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"