=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: integer
-  Output: integer
---
**Problem Domain:**
- Return the index of the fibonacci number that has the number of digits given in argument
- First fibonacci number has an index of 1

- Fibonacci sequence: 1, 1, 2, 3, 5, 8, 13, 21, 34...

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
- Input and output value is a positive integer

---
Algorithm
---------
- Method passes in integer as argument
- Build fibonacci sequence
  - Set first to 1
  - Set second to 1
  - Next = first + second
  - 
- Once a number is reached whose length is equal to the argument, return this number

Code
----
=end

def find_fibonacci_index_by_length(digit)
  first = 1
  second = 1

  fib_array = [first, second]
  
  loop do
    next_num = first + second
    fib_array << next_num
    break if next_num.to_s.length == digit
    first = second
    second = next_num
  end

  fib_array.find_index(fib_array.last) + 1
end

# better solution
def find_fibonacci_index_by_length(number_digits)
  first = 1
  second = 1
  index = 2

  loop do
    index += 1
    fibonacci = first + second
    break if fibonacci.to_s.size >= number_digits

    first = second
    second = fibonacci
  end

  index
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847