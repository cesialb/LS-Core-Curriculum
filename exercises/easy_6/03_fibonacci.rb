=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: integer
-  Output: index of the first fibonacci number that has the number of digits
---
**Problem Domain:**
- Fibonacci sequence is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, etc..)
- How to build fibonacci sequence?
  - First two numbers are 1 by definition
  - Each subsequent number is the sum of the two previous numbers
---
**Implicit Requirements:**
- Trying to find the index of the first number that has the # of digits passed into the method
  - Ex: find_fib(2) => what's the first two digit Fib number? 13
    - 13 is found in index 7 of the fibonacci sequence
  - Ex. find_fib(3) => what's the first three digit Fib number? 144
    - 144 is found in index 12 of the sequence
---
**Clarifying Questions:**
1.
2.
3.
---
**Mental Model:**
- The number passed into the method will be the size of the Fib number (converted to string)
- Locate and return the index of the first number that matches this size
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: 10
  -  Output: 45
-  Example 2
  -  Inputs: 100
  -  Output: 476
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
- Begin building Fibonacci sequence
  - While building:
    - Check if current_number_converted_to_string's size == integer
    - If it is, return the index of this number

Code
----
=end

def find_fibonacci_index_by_length(digits)
  first = 1
  second = 1
  fib_arr = [first, second]

  loop do 
    next_num = first + second
    fib_arr << next_num
    break if next_num.to_s.length >= digits
    first = second
    second = next_num
  end

  result = fib_arr.index(fib_arr.last) + 1
end

# better solution
def find_fibonacci_index_by_length(digits)
  first = 1
  second = 1
  index = 2

  loop do
    index += 1
    fibonacci = first + second
    break if fibonacci.to_s.size >= digits

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