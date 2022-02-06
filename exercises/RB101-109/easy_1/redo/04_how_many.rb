=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: an array
-  Output: the number of occurrences of each element
---
**Problem Domain:**
---
**Implicit Requirements:**
- Words are case-sensitive: 'suv' != 'SUV'
- Print each element alongside the number of occurrences
---
**Clarifying Questions:**
1.
2.
3.
---
**Mental Model:**
- Find a way to display the amount of times a word is in the array.
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: vehicles
  -  Output: car => 4
             truck => 3
             SUV => 1
             motorcycle => 2
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
- Input value is an array 
- Output value is output: the word, '=>', and the number of times it appears
---
Algorithm
---------
- Iterate through array
- Output word and '=>'
- Have a method that displays the number of times the word appears in the collection
- Print the entire thing

- Output looks like a hash

Code
----
=end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(array)
  occurrences = {}

  array.uniq.each do |element|
    occurrences[element] = array.count(element)
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end

count_occurrences(vehicles)