=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: nested hash, holding name hashes, that hold age and gender
-  Output: total age of male members of the family
---
**Problem Domain:**
---
**Implicit Requirements:**
---
- Male members are when munsters[name]["gender"] = "male"
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
- Working with a hash of hashes
- Return value will be an integer - total age of male family members
- Need to select for male gender and sum up their ages

Algorithm
---------
- Create sum variable
- Iterate through outer hash, accessing each family member
- Select for their gender key
  - If it is male, add their age value to sum
  - If it is female, do nothing
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

sum = 0

munsters.each do |member, details|
  sum += details['age'] if details['gender'] == 'male'
end

p sum

# better solution
total_age = 0
munsters.each_value do |details|
  total_age += details['age'] if details['gender'] == 'male'
end

p total_age