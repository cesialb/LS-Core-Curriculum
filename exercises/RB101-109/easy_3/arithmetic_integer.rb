=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: Two positive integers
-  Output: Print results of +, -, /, *, %, ** on them
---
**Problem Domain:**
---
**Implicit Requirements:**
---
1. The two numbers must be integers.
2. Do not worry about validating input.
**Clarifying Questions:**
1. Is it modulo or remainder?
2. Integer division?
3.
---
**Mental Model:**
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: 23, 17
  -  Output: 
    23 + 17 = 40
    23 - 17 = 6
    23 * 17 = 391
    23 / 17 = 1
    23 % 17 = 6
    23 ** 17 = 141050039560662968926103
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
No data structure needed. 
Various methods to hold computations.

Algorithm
---------
START
User prompted for first number.
SET first_num = prompt
User prompted for second number.
SET second_num = prompt

add_nums method (num1, num2)
subtract_nums method (num1, num2)
multiply_nums method (num1, num2)
divide_nums method (num1, num2)
remainder_nums method (num1, num2)
power_nums method (num1, num2)

Methods return their answers back to main
PRINT answers
END

Code
----
=end

def prompt(message)
  puts "==> #{message}"
end

def add_nums(num1, num2)
  num1 + num2
end

def subtract_nums(num1, num2)
  num1 - num2
end

def multiply_nums(num1, num2)
  num1 * num2
end

def divide_nums(num1, num2)
  num1 / num2
end

def remainder_nums(num1, num2)
  num1 % num2
end

def power_nums(num1, num2)
  num1 ** num2
end

print prompt("Enter the first number: ")
first_num = gets.chomp.to_i

print prompt("Enter the second number: ")
second_num = gets.chomp.to_i

print prompt("#{first_num} + #{second_num} = #{add_nums(first_num, second_num)}")
print prompt("#{first_num} - #{second_num} = #{subtract_nums(first_num, second_num)}")
print prompt("#{first_num} * #{second_num} = #{multiply_nums(first_num, second_num)}")
print prompt("#{first_num} / #{second_num} = #{divide_nums(first_num, second_num)}")
print prompt("#{first_num} % #{second_num} = #{remainder_nums(first_num, second_num)}")
print prompt("#{first_num} ** #{second_num} = #{power_nums(first_num, second_num)}")