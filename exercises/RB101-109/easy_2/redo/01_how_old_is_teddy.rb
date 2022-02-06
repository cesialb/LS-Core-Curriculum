=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: no input
-  Output: phrase that shows Teddy's age
---
**Problem Domain:**
---
**Implicit Requirements:**
- age = random number between 20 and 200
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
  -  Inputs: none
  -  Output: Teddy is 69 years old!
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
- No input value
- String as output value
---
Algorithm
---------
- Generate random number between 20 and 200
- Print the desired output

Code
----
=end

age = rand(20..200)
puts "Teddy is #{age} years old!"

#===============================

# further exploration
  # program asks for name
  # print age for that person
  # if no name is given, print Teddy for the name

puts "What is the name?"
name = gets.chomp

age = rand(20..200)

if name.empty?
  puts "Teddy is #{age} years old!"
else
  puts "#{name} is #{age} years old!"
end

#==============================

# better solution
puts "What is the name?"
name = gets.chomp.capitalize
name = "Teddy" if name.empty?

age = rand(20..200)
puts "#{name} is #{age} years old!"