=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: three scores
-  Output: determines average of three scores, and letter value associated with that grade
---
**Problem Domain:**
- Method accepts three scores (integer or otherwise)
- Build average of those scores
  - Helper method
- Find grade of that score
  - Helper method
- Return string of letter value

---
**Implicit Requirements:**
- Scores have to be 0 or higher - they're grades
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
  -  Inputs: 95, 90, 93
  -  Output: 'A'
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
- Input values are three integers (assuming/implicit)
- Output value is a string

---
Algorithm
---------
- Method passes in three integers as arguments
- Find mean of those three integers
  - Helper method that returns a floating-point number
- Find letter value associated w/that average
  - Helper method that returns a string
- Return string

Code
----
=end

def mean(score1, score2, score3)
  (score1 + score2 + score3) / 3.0
end

def get_letter_value(score)
  case score
  when 90..100 then 'A'
  when 80..89 then 'B'
  when 70..79 then 'C'
  when 60..69 then 'D'
  else             'F'
  end
end

def get_grade(score1, score2, score3)
  average = mean(score1, score2, score3)
  get_letter_value(average)
end

p get_grade(95, 90, 93)

# further exploration - what if there was extra credit
def get_letter_value_fur_ex(avg, excr)
  case avg + excr
  when 90..300 then 'A'
  when 80..89 then 'B'
  when 70..79 then 'C'
  when 60..69 then 'D'
  else             'F'
  end
end

def get_grade_fur_ex(score1, score2, score3, excr=0)
  average = mean(score1, score2, score3)
  get_letter_value_fur_ex(average, excr)
end

p get_grade_fur_ex(95, 90, 93, 10)
