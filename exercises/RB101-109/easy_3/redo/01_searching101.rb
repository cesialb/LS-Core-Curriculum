=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: asks user for six numbers
-  Output: message that describes whether or not 6th numbers appears in first 5
---
**Problem Domain:**
---
**Implicit Requirements:**
- Seems to be all integers
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
- Input integer values will be pushed into an array
- Output values involve the array in display
---
Algorithm
---------
- Prompt user for numbers 1-6
- Push numbers into an array
- Set search_number = number 6 prompt
- Iterate through array and try to locate number that == search_number
- If found, it appears
- If not, it doesn't appear

Code
----
=end

ORDINALS = ['1st', '2nd', '3rd', '4th', '5th']

def prompt(message)
  puts "=> #{message}"
end

counter = 0
num_arr = []

loop do
  prompt("Enter the #{ORDINALS[counter]} number:")
  num_arr << gets.chomp.to_i
  counter += 1
  break if counter == ORDINALS.size
end

prompt("Enter the last number:")
search_number = gets.chomp.to_i

found = false

num_arr.each do |num|
  if num == search_number
    found = true
    break
  end
end

if found
  puts "The number #{search_number} appears in #{num_arr}"
else
  puts "The number #{search_number} does not appear in #{num_arr}"
end

# much better solution - no need for booleans or each iteration
if num_arr.include?(search_number)
  puts "The number #{search_number} appears in #{num_arr}"
else
  puts "The number #{search_number} does not appear in #{num_arr}"
end