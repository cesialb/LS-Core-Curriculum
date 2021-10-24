=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: Integer greater than 0
-  Output: Sum or product of all numbers between 1 and that number
---
**Problem Domain:**
---
**Implicit Requirements:**
---
1. It is inclusive, so include 1 and the prompted number in the computation.
2. Number must be greater than zero.

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
  -  Inputs: 5, sum
  -  Output: Sum b/w 1 and 5 is 15.
-  Example 2
  -  Inputs: 6, product
  -  Output: Product b/w 1 and 6 is 720.
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
---
No structure needed.
Iteration through a range.

Algorithm
---------
START
Prompt user for a number greater than 0.
Check validation of that number.
If invalid, prompt user again.
SET number = user answer
Prompt user for sum or product of that number.
If prompt == 's'
  SET sum = 0
  Iterate through range of 1 --> prompt, adding each iteration to sum
  PRINT sum
If prompt == 'p'
  SET product = 0
  Iterate through range of 1 --> prompt, adding each iteration to product
  PRINT product
END
Code
----
=end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def is_valid?(number)
  number.to_i > 0
end

number = 0

loop do
  Kernel.print(prompt("Please enter an integer greater than 0:"))
  number = Kernel.gets().chomp()

  if !is_valid?(number)
    Kernel.puts("Invalid number. Must be greater than zero.")
  else
    break
  end
end

number = number.to_i

Kernel.print(prompt("Enter 's' to compute the sum, 'p' to compute the product."))
choice = Kernel.gets().chomp()

if choice == 's'
  sum = 0
  (1..number).each do |num|
    sum += num
  end
  Kernel.puts("The sum of the integers between 1 and #{number} is #{sum}.")
elsif choice == 'p'
  product = 1
  (1..number).each do |num|
    product *= num
  end
  Kernel.puts("The product of the integers between 1 and #{number} is #{product}.")
end

# better solution

def prompt(message)
  Kernel.puts("=> #{message}")
end

def is_valid?(number)
  number.to_i > 0
end

def compute_sum(number)
  total = 0
  1.upto(number) {|val| total += val}
  total
end

def compute_product(number)
  total = 1
  1.upto(number) {|val| total *= val}
  total
end

number = 0

loop do
  Kernel.print(prompt("Please enter an integer greater than 0:"))
  number = Kernel.gets().chomp()

  if !is_valid?(number)
    Kernel.puts("Invalid number. Must be greater than zero.")
  else
    break
  end
end

number = number.to_i

Kernel.print(prompt("Enter 's' to compute the sum, 'p' to compute the product."))
choice = Kernel.gets().chomp()

if choice == 's'
  sum = compute_sum(number)
  Kernel.puts("The sum of the integers between 1 and #{number} is #{sum}.")
elsif
  product = compute_product(number)
  Kernel.puts("The product of the integers between 1 and #{number} is #{product}.")
else
  Kernel.puts("Oops. Unknown operation.")
end

# further exploration

def compute_sum(num)
  sum = (1..num).inject(:+)
  sum
end

def compute_product(num)
  product = (1..num).inject(:*)
  product
end

