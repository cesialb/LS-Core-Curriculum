=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: six numbers, given by user
-  Output: output whether or not the 6th number appears among the first 5
---
**Problem Domain:**
---
**Implicit Requirements:**
- Numbers can be anything - integer, float, etc.
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
- Input values are numbers
- Output value is console output
- Array would make sense to hold the first five numbers
---
Algorithm
---------
- Create constant array to hold 1st-5th
- Create number array, empty
- Iterate through constant array, accessing each 'place'
  - Prompt user for that number
  - Push to number array
- Prompt user for last number
- See if the last number is in the number array
  - If so, print successful message
  - If not, print unsuccessful message

Code
----
=end

def prompt(msg)
  puts "==> #{msg}"
end

PLACES = %w[1st 2nd 3rd 4th 5th].freeze

num_array = []

PLACES.each do |place|
  prompt "Enter the #{place} number:"
  num = gets.chomp.to_i
  num_array << num
end

prompt 'Enter the last number:'
search_number = gets.chomp.to_i

if num_array.include?(search_number)
  puts "The number #{search_number} appears in #{num_array}."
else
  puts "The number #{search_number} does not appear in #{num_array}."
end
