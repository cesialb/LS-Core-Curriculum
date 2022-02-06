=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: positive integer
-  Output: sum or product of all numbers from 1 to that integer
---
**Problem Domain:**
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
---
Algorithm
---------
- Prompt user for positive integer, save as variable
- Prompt user for sum or product, create respective variable (0 or 1)
- From 1 to that integer:
  - If sum, keep adding num to sum
  - If product, keep multiply to product
- Print variable

Code
----
=end

def prompt(msg)
  puts ">> #{msg}"
end

prompt("Please enter an integer greater than 0:")
number = gets.chomp.to_i

prompt("Enter 's' to compute the sum, 'p' to compute the product.")
choice = gets.chomp

case choice
when 's'
  sum = 0
  1.upto(number) { |num| sum += num }
  puts "The sum of the integers between 1 and #{number} is #{sum}."
when 'p'
  product = 1
  1.upto(number) { |num| product *= num }
  puts "The product of the integers between 1 and #{number} is #{product}."
else
  puts "Invalid choice!"
end

# could have split into helper methods 