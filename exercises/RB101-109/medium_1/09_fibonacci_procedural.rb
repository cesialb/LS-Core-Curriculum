=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: integer
-  Output: nth fibonacci number
---
**Problem Domain:**
- This method should not use recursion
  - Ruby does an ok job of handling recursion, not designed for heavy though
    - fibonacci(40) is where it begins to falter
    - tail recursion does better, but fails at fibonacci(8200)
- Every recursive method can be rewritten as procedural!
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
  -  Inputs: 20
  -  Output: 6765
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
- Output value is an integer
---
Algorithm
---------
- Method passes in integer as argument
- Set first to 1, set second to 1
- Create next variable, set to 0
- Create counter variable, set to 0
- Begin looping, until counter == n
  - Next = first + second
  - first = second
  - second = next
- Once the looping breaks, return next

Code
----
=end

def fibonacci(nth)
  return 1 if nth <= 2

  first = 1
  second = 1
  counter = 2  # first two numbers have already been identified

  while counter != nth          # can use 3.upto(nth) instead of requiring counter
    next_num = first + second
    first = second
    second = next_num
    counter += 1
  end

  next_num
end

# cleaner solution
def fibonacci(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end
  last
end

p fibonacci(20)
p fibonacci(100_001)
