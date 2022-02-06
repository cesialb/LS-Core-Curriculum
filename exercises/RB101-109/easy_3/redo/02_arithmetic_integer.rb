=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: prompts user for two positive integers
-  Output: calculates all operations b/w the two (add/sub/mult/div/mod/expo)
---
**Problem Domain:**
---
**Implicit Requirements:**
---
- Integer division only

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
  -  Inputs: 23, 17
  -  Output: 40, 6, 391, 1, 6, 141050039560662968926103
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
- No real data structure needed.
- Helper methods are necessary for cleanliness.

Algorithm
---------
- Prompt user for 1st number
- Set num_one to this
- Prompt user for 2nd number
- Set num_two to this

- Go through calculations via helper methods
- Remember to use integer division
- Display output as requested

Code
----
=end

def prompt(message)
  puts "=> #{message}"
end

def add_nums(num1, num2)
  num1 + num2
end

def sub_nums(num1, num2)
  num1 - num2
end

def mult_nums(num1, num2)
  num1 * num2
end

def div_nums(num1, num2)
  num1 / num2
end

def modulo_nums(num1, num2)
  num1 % num2
end

def expo_nums(num1, num2)
  num1 ** num2
end

prompt("Enter the first number:")
num_one = gets.chomp.to_i

prompt("Enter the second number:")
num_two = gets.chomp.to_i

prompt("#{num_one} + #{num_two} = #{add_nums(num_one, num_two)}")
prompt("#{num_one} - #{num_two} = #{sub_nums(num_one, num_two)}")
prompt("#{num_one} * #{num_two} = #{mult_nums(num_one, num_two)}")
prompt("#{num_one} / #{num_two} = #{div_nums(num_one, num_two)}")
prompt("#{num_one} % #{num_two} = #{modulo_nums(num_one, num_two)}")
prompt("#{num_one} ** #{num_two} = #{expo_nums(num_one, num_two)}")

# better solution
operations_arr = %i(+ - * / % **)

puts "=> Enter the first number:"
first = gets.chomp.to_i
puts "=> Enter the second number:"
second = gets.chomp.to_i

operations_arr.each do |operation|
  result = [first, second].inject(operation)
  puts "#{first} #{operation} #{second} = #{result}"
end

