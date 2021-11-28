=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: integer (nth)
-  Output: last digit of the nth fibonacci number
---
**Problem Domain:**
- Utilize fibonacci procedural method from previous exercise
- Find the last digit of the number that method returns
---
**Implicit Requirements:**
---
**Clarifying Questions:**
1. Does the last digit have to be an integer, or a string?
2.
3.
---
**Mental Model:**
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: 15
  -  Output: 0 (15th fib number is 610)
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
- Use fibonacci procedural method to return the nth fibonacci number
- Convert that number to a string, take the last element, and convert back to integer
- Return that integer

Code
----
=end

def fibonacci(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end
  last
end

# def fibonacci_last(nth)
#   fibonacci(nth).to_s[-1].to_i
# end

# reformatted solution
  # you only need the last digit of numbers in fibonacci sequence to solve this
  # the rest aren't necessary => less computing power

def fibonacci_last(nth)
  last_2 = [1, 1]
  3.upto(nth) do
   last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
  end
  last_2.last
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4      

