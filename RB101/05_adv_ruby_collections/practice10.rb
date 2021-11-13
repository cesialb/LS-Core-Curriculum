=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: an array of hashes, hashes of varying lengths
-  Output: new array, identical in structure, with the value of each int inc'd by 1
---
**Problem Domain:**
---
**Implicit Requirements:**
---
- Do NOT modify the original array
- Use the map method to return the new array

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
- Input value is an array of hashes, keys being symbols and values being integers
- Return value will be a new array of hashes returned from map method 

Algorithm
---------
- Iterate through the array, accessing each hash
  - We are not altering this array, so it has to be each method
  - Each method always returns the original collection
- Iterate through each hash, accessing their values
- While iterating through the values, increment by 1
- Map method returns the hashes
- Each method in array iteration can push to new_arr

Code
----
=end

arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

new_arr = arr.map do |hash|
  incremented_hash = {}
  hash.each do |key, value|
    incremented_hash[key] = value + 1
  end
  incremented_hash
end

p arr
p new_arr

# didn't understand this one fully
# kept mutating the original array
# LS explanation makes it make sense now
# create a hash every time map iterates through the outer array
# that hash is then returned by map, but only if it's the last expression

