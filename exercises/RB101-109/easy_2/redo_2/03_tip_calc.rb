=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: bill amount and tip rate, given by user
-  Output: display tip and total amount of bill
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
- Input values are positive numbers
- Output values are floats, displayed via output
---
Algorithm
---------
- Prompt user for bill and tip percentage
- Convert answer to floats
- Convert tip percentage to decimal form
- Display bill and tip as output

Code
----
=end

print "What is the bill? "
bill = gets.chomp.to_f

print "What is the tip percentage? "
tip = gets.chomp.to_f / 100

tip = tip * bill

total = bill + tip

puts "The tip is $#{tip}"
puts "The total is $#{total}"