=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: floating point number that represents an angle b/w 0 and 360deg
-  Output: string that represents the angle in degrees, minutes, seconds
---
**Problem Domain:**
- Two commonly used units of measurement for angles
  1) degrees
  2) degrees, minutes, seconds
    - degree is divided into 60 minutes
    ex. 7.5 degrees = 7° 30'
    - minute is divided into 60 seconds
    ex. 2 degrees, 5 minutes, 30 seconds = 2° 5' 30"

- How to state 40° 20' 50" using common decimal notation?
  - 40 + (20 * 1/60) + (50 * 1/60 * 1/60) = 40.34722
    - 40 full degrees, 20 minutes (each 1/60 of a deg), and 50 sec (each 1/60 of a minute)

- Reverse?
  - 40.34722
    - 40 full degrees - 0.34722 left
    - 0.34722 * 60 = 20.832 
      - 20 full minutes = 0.832 left
    - 0.832 * 60 = 49.92 seconds --> round to 50
---
**Implicit Requirements:**
---
**Clarifying Questions:**
1.
2.
3.
---
**Mental Model:**
- Convert degrees in decimal form to a degree/minute/second format. Use two digit numbers with
  leading zeros when formatting (ex. 321°03'07")
- Rounding is encouraged/necessary(?)

---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: 30
  -  Output: 30°00'00
-  Example 2
  -  Inputs: 76.73
  -  Output: 76°43'48"
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
- Input value is a floating-point number, output value is a string

---
Algorithm
---------
- Method accepts floating-point number as an argument
- Break off the number before the decimal point, assign that to degrees
- Multiply what's left by 60
- Break off the number before the decimal point, assign that to minutes
- Multiply what's left by 60
- Round that to the closest ones point, assign that to seconds
- Format the answer according to the prompt

Code
----
=end

DEGREE = "\xC2\xB0"
MINUTES_IN_DEGREE = 60
SECONDS_IN_MINUTE = 60

def dms(angle)
  degrees = angle.truncate
  rest = angle - degrees
  
  rest *= MINUTES_IN_DEGREE
  seconds, minutes = rest.divmod(MINUTES_IN_DEGREE)
  minutes = minutes.round

  seconds *= SECONDS_IN_MINUTE
  seconds = seconds.round

  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
  
end

# better solution

DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(degrees_float)
  total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

# further exploration
  # what about angles larger than 360?
  # larger_angle % 360 to obtain the normalized angle

def normalize_angle_to_0_through_360(angle)
  angle % 360
end

def dms(degrees_float)
  degrees_float = normalize_angle_to_0_through_360(degrees_float)

  total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

p dms(400) == %(40°00'00")
p dms(-40) == %(320°00'00")
p dms(-420) == %(300°00'00")



