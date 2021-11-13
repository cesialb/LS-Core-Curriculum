=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: an array containing hashes and arrays
-  Output: return value is a hash, where the key is the 1st item in each subarray, and value is the second term
---
**Problem Domain:**
---
**Implicit Requirements:**
---
1. Do not use the Array#to_h method

**Clarifying Questions:**
1. Huh?
  - The first element in the subarray becomes the hash key, and the second element becomes the hash value
  - The fourth subarray: the hash becomes the hash key in this case!
2.
3.
---
**Mental Model:**
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
  -  Output: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}
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
- The original array is an array of arrays and hashes
- The return value will be a hash - hash key is element 0 in the subarray, hash value is element 1 - no matter what

Algorithm
---------
- We want to access each subarray, assign its first and second elements as key and value to ONE hash
- Iterate through outer array, access each subarray
- Assign first element as hash key, second element as hash value
- After iterating, return the entire hash

Code
----
=end

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

hsh = {}

arr.each do |item|
  hsh[item[0]] = item[1]
end

p hsh