=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: an array of strings
-  Output: number of occurrences of each element
---
**Problem Domain:**
- You have an array of strings. List out the number of times each element appears in it.
- Words are case-sensitive
- Print each element next to the number of times it appears in the array
---
**Implicit Requirements:**
---
**Clarifying Questions:**
1. The array will always have string elements only?
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
- Input value is an array of strings
- Output value is printing output
---
Algorithm
---------
- Method passes in array as argument
- Create an array that holds the unique elements in the array, w/o mutating original
- Iterate through unique array, accessing each element
  - Print "element => " and find the count of that element in original array

Code
----
=end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'suv', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(arr)
  arr.uniq.each do |word|
    puts "#{word} => #{arr.count(word)}"
  end
end

# further exploration - words are case sensitive now!
def count_occurrences_furex(arr)
  arr.map!(&:downcase).uniq.each do |word|
    puts "#{word} => #{arr.count(word)}"
  end
end

count_occurrences(vehicles)
puts '===='
count_occurrences_furex(vehicles)