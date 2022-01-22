=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: year
-  Output: number of friday the 13ths
---
**Problem Domain:**
- Assume the year is greater than 1752 - beginning of Gregorian Calendar
- Use Date object to initialize 
- look into the friday? method

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
- Input value is an integer greater than 1752
- Output value is an integer

---
Algorithm
---------
- Initialize Date with the year given
- Set counter to 0
- Find a way to step through the year, checking the day as 13, and if it's a Friday
  - If so, counter += 1

Code
----
=end

require 'Date'

def friday_13th(year)
  Date.new(year).step(Date.new(year, -1, -1)).select do |day|
    day.mday == 13 && day.friday?
  end.size
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2