=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: six numbers from the user
-  Output: message that describes whether the sixth number is among the first five
---
**Problem Domain:**
---
**Implicit Requirements:**
---
1. Must be six numbers in total.

**Clarifying Questions:**
1. Are all six numbers assumed to be integers?
2.
3.
---
**Mental Model:**
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: 25, 15, 20, 17, 23, 17
  -  Output: 17 appears in [25, 15, 20, 17, 23].
-  Example 2
  -  Inputs: 25, 15, 20, 17, 23, 18
  -  Output: 18 does not appear in [25, 15, 20, 17, 23].
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
An array will be needed here.
Will hold the first five numbers entered by the user.
Sixth number will be searched with vs. the collection of first five numbers.

Algorithm
---------
Prompt user for six numbers.
First five numbers entered into a collection of integers.
Sixth number saved as number to search with.
Iterate through collection, and see if any number == search_number.
If so, print that search_number does appear in the printed collection.
If not, say it doesn't.

Loop five times and push the answered number to the collection.
Use each_with_index to iterate through the prompt with the indexed numbers.
Break out of the loop and ask for the sixth number.
SET search_number = answer

Code
----
=end

ORDINALS = ["1st", "2nd", "3rd", "4th", "5th"]

def prompt(message)
  puts "=> #{message}"
end

def check_array(array, num)
  array.include? num ? true : false
end

num_array = []

ORDINALS.each do |place|
  print prompt("Enter the #{place} number:")
  num_array << gets.chomp.to_i
end

print prompt("Enter the last number: ")
search_number = gets.chomp.to_i

check_array(num_array, search_number) ? prompt("The number #{search_number} appears in #{num_array}.") : prompt("The number #{search_number} does not appear in #{num_array}.")
