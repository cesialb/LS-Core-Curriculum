=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: two positive integers, given by user
-  Output: prints result of common operations with those two numbers
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
- Build method for prompts
- Prompt user for two numbers
- Go through operations with those two numbers and print them

Code
----
=end

def prompt(msg)
  puts "==> #{msg}"
end

prompt 'Enter the first number:'
first_num = gets.chomp.to_i

prompt 'Enter the second number:'
second_num = gets.chomp.to_i

prompt "#{first_num} + #{second_num} = #{first_num + second_num}"
prompt "#{first_num} - #{second_num} = #{first_num - second_num}"
prompt "#{first_num} * #{second_num} = #{first_num * second_num}"
prompt "#{first_num} / #{second_num} = #{first_num / second_num}"
prompt "#{first_num} % #{second_num} = #{first_num % second_num}"
prompt "#{first_num} % #{second_num} = #{first_num % second_num}"
prompt "#{first_num} ** #{second_num} = #{first_num ** second_num}"