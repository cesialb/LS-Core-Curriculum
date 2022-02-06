=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: three scores
-  Output: mean of the three scores, but return letter value associated with the grade

---
**Problem Domain:**
  90 <= score <= 100 	'A'
  80 <= score < 90 	  'B'
  70 <= score < 80 	  'C'
  60 <= score < 70 	  'D'
  0 <= score < 60 	  'F'
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
- Input values are three scores (possibly floating point)
- Output value is a string character

---
Algorithm
---------
- Method passes in three numbers as arguments
- Get average of the three numbers
- Use case statement to determine letter value, according to guidelines
- Return the character

Code
----
=end

def get_grade(score1, score2, score3)
  overall_grade = (score1 + score2 + score3) / 3.0

  case overall_grade
  when 90..100
    'A'
  when 80..89
    'B'
  when 70..79
    'C'
  when 60..69
    'D'
  when 0..59
    'F'
  else 'Invalid score!'
  end

end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"