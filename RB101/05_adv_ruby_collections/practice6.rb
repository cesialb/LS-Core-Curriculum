=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: a nested hash of hashes - family members hash, holding details of age and gender
-  Output: output of this for each member:
    (Name) is a (age)-year-old (male or female).
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
  -  Inputs: munsters hash
  -  Output: Herman is a 32-year-old male.
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
- Input is a hash of hashes
- Return value will be a printout - puts
- Have to access the name, the age, and the gender - how to access them?

Algorithm
---------
- How to access each name in munsters
  - munsters[name]
- How to access each age in munsters
  - Iterate through munsters value and access ['age']
- How to access each gender in munsters
  - Iterate through munsters value and access ['gender']

1. Iterate through outer hash - referencing the key and value (name and details)
2. Print the desired variables in string form.

Code
----
=end

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, details|
  puts "#{name} is a #{details['age']}-year-old #{details['gender']}"
end

