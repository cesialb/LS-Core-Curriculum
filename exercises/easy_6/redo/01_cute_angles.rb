=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: floating point number - angle in degrees
-  Output: string - represents angle in degrees, minutes, seconds
---
**Problem Domain:**
- Degree has 60 minutes
- Minute has 60 seconds
- You have an angle in floating-point form. Convert it into a string:
  - 30°45'00"
- Use two digit numbers with leading zeroes when formatting minutes and seconds
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
- Input value is a floating point number
- Output value is a string

---
Algorithm
---------
- Method passes in FP number as argument
- Take the number before the decimal point, save that as degrees
- Subtract degrees from angle
- Multiply the remaining number by 60
- Take the number before the decimal point, save that as minutes
- Subtract minutes from angle
- Multiply the remaining number by 60, save that as seconds

Code
----
=end

DEGREE = "\xC2\xB0"
TO_MINUTES = 60
TO_SECONDS = 60

def dms(angle)
  degrees = angle.truncate()
  angle = angle - degrees

  minutes = (angle * TO_MINUTES).truncate()
  angle = (angle * TO_MINUTES) - minutes

  seconds = (angle * TO_SECONDS).truncate()

  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

puts dms(30) #== %(30°00'00")
puts dms(76.73) #== %(76°43'48")
puts dms(254.6) #== %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
