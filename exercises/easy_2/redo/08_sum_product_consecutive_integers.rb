=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: user prompt to enter integer greater than zero
           then ask user if they want sum or product
-  Output: sum or product of all nums b/w 1 and that numebr
---
**Problem Domain:**
---
**Implicit Requirements:**
- Given integer will not be negative or zero
- Sum or product will be integers
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
  -  Inputs: 5, sum
  -  Output: 15
-  Example 2
  -  Inputs: 6, product
  -  Output: 720
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
- Prompt user for integer greater than 0
- Set num to this, convert to int
- Prompt user for sum or product
- Set choice to this
- If choice is 's' 
  - Iterate from 1 to num, summing up 
- If choice is 'p'
  - Iterate from 1 to num, multiplying to obtain overall product 
- Display output according to prompt

Code
----
=end

def prompt(message)
  puts "=> #{message}"
end

prompt("Please enter an integer greater than 0:")
num = gets.chomp.to_i

prompt("Enter 's' to compute the sum, 'p' to compute the product.")
choice = gets.chomp

case choice
when 's'
  sum = 0
  1.upto(num) {|num| sum += num}
  puts "The sum of the integers between 1 and #{num} is #{sum}."
when 'p'
  product = 1
  1.upto(num) {|num| product *= num}
  puts "The product of the integers between 1 and #{num} is #{product}."
else
  puts "Invalid choice!"
end

# better solution
  # put sum and product computations into helper methods