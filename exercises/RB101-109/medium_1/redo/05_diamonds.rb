=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: odd integer
-  Output: 4-pointed diamond in an n x n grid
---
**Problem Domain:**
- Given an odd integer, use console output to build a diamond in an n x n grid
- The diamonds are asterisks

diamond(3)

 *
***
 *

---
**Implicit Requirements:**
---
**Clarifying Questions:**
1.
2.
3.
---
**Mental Model:**
- The odd integer will be the maximum number of asterisks on a row
- The asterisks increment from 1 by 2 on their way to the max number
- Then the asterisks decrement by 2 on their way back down to 1
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
- Input value is an odd integer
- Output value is console output

---
Algorithm
---------
- Method passes in odd integer
- Set stars to 1, set spaces to (odd integer - 1) / 2
- Loop until stars is larger than odd integer
  - Print spaces, then stars : this should get us the first half of diamond

Code
----
=end

def build_line(stars, spaces)
  puts (' ' * spaces) + ('*' * stars) + (' ' * spaces)
end

def diamond(n)
  spaces = (n / 2)
  stars = 1

  while stars < n
    build_line(stars, spaces)
    stars += 2
    spaces -= 1
  end

  build_line(stars, spaces)

  while stars > 1
    stars -= 2
    spaces += 1
    build_line(stars, spaces)
  end

end

diamond(9)
diamond(99)