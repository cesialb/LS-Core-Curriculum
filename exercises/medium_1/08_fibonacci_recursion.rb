=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: integer (nth)
-  Output: the nth fibonacci number
---
**Problem Domain:**
- Fibonacci sequence:
  - sequence of numbers starting with 1 and 1
  - rest of sequence: next number is the sum of the previous two numbers
    - ex: 1, 1, 2, 3, 5, 8, 13, etc...
  - this type of sequence translates well to recursive methodology
- example of recursive method: 
  def sum(n) - computes the sum of all integers b/w 1 and n
      return 1 if n == 1
      n + sum(n - 1)
  end
- recursive methods have three primary qualities:
  1. they call themselves at least once
  2. they have a condition that stops the recursion
  3. they use the result returned by themselves

- Write a recursive method that computes the nth Fibonacci number
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
  -  Inputs: 1
  -  Output: 1
-  Example 2
  -  Inputs: 2 
  -  Output: 1
---
_Your Test Cases:_
-  Example 3
  -  Inputs: 4
  -  Output: 3
---
_Your Edge Cases:_
-  Example 4
  -  Inputs: 12
  -  Output: 144
---
Data Structure
--------------
- Input value is an integer
- Output value is an integer

---
Algorithm
---------
- Fibonacci sequence, using recursion
  - start with 1 and 2 as F(1) and F(2), respectively
  - 3rd number is F(3) == F(2) + F(1)
  - F(4) == F(3) + F(2)
- Generic case: F(n) == F(n - 1) + F(n - 2)
    - Recursive method: 
      - fibonacci(1) returns 1
      - fibonacci(2) returns 1
      - Everything else should return the sum of previous 2 numbers
Code
----
=end

def fibonacci(n)
  if n < 2
    n
  else
    fibonacci(n - 1) + fibonacci(n - 2)
  end
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
p fibonacci(50)