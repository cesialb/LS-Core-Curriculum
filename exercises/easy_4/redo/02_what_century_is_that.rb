=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: year
-  Output: the century
---
**Problem Domain:**
---
**Implicit Requirements:**
- Year will be an integer
- Return value should be a string that begins w/century number, ends st/nd/rd/th
---
**Clarifying Questions:**
1. How to define centuries?
  - New centuries begin in years that end with 01 (1901-2000 is the 20th)
2.
3.
---
**Mental Model:**
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: 2000
  -  Output: 20th
-  Example 2
  -  Inputs: 2001
  -  Output: 21st
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
- Method accepts year (integer) as argument
- How to calculate century from just the year?
    - From Google: divide the year by 100, drop the decimals, add 1
    - Test this out - it works
- How to append the appropriate suffix for the number?
    - When does each apply?
      - If number ends in 1, 2, or 3 - use corresponding 'st', 'nd', 'rd'
      - Otherwise, use 'th'
- Convert century calculation to a string
- Test number to figure out which suffix is appropriate and attach it to century

Code
----
=end

def century(year)
  century = (((year - 1)/ 100) + 1).to_s

  case century[-2, 2]
  when '11'
    century << 'th'
    return century
  when '12'
    century << 'th'
    return century
  when '13'
    century << 'th'
    return century
  end

  case century[-1]
  when '1'
    century << 'st'
  when '2'
    century << 'nd'
  when '3'
    century << 'rd'
  else
    century << 'th'
  end

  century
end

# better solution
def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
