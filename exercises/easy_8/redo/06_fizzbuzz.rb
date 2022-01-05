=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: starting number and ending number
-  Output: console output
---
**Problem Domain:**
- Print all numbers between the two, inclusive, but:
  - if number is divisible by 3, print 'Fizz'
  - if number is divisible by 5, print 'Buzz'
  - if number is divisible by both 3 and 5, print 'FizzBuzz'
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
- Input values are two numbers
- Output value is console output

---
Algorithm
---------
- Method passes in two numbers as arguments
- Create number array, make it empty
- Use upto method to iterate from starting to ending number
  - If the num is divisible by 3 and 5, print 'FizzBuzz' and move to next
  - Else if the num is divisible by 5, print 'Buzz'
  - Else if the num is divisible by 3, print 'Fizz'
  - Else print the number

Code
----
=end

def fizzbuzz(start, ending)

  number_arr = []

  start.upto(ending) do |number|
    if number % 3 == 0 && number % 5 == 0
      number_arr << 'FizzBuzz' 
    elsif number % 5 == 0
      number_arr << 'Buzz'
    elsif number % 3 == 0
      number_arr << 'Fizz'
    else
      number_arr << number
    end
  end

  puts number_arr.join(', ')

end

# better solution - helper method and case statement
def fizzbuzz(starting_number, ending_number)
  result = []
  starting_number.upto(ending_number) do |number|
    result << fizzbuzz_value(number)
  end
  puts result.join(', ')
end

def fizzbuzz_value(number)
  case
  when number % 3 == 0 && number % 5 == 0
    'FizzBuzz'
  when number % 5 == 0
    'Buzz'
  when number % 3 == 0
    'Fizz'
  else
    number
  end
end

fizzbuzz(1, 15)