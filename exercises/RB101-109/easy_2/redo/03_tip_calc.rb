=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: prompt for a bill amount and tip rate
-  Output: display tip and total amount of bill
---
**Problem Domain:**
---
**Implicit Requirements:**
- Display must be formatted with one decimal point and a dollar sign
- Tip percentage must be converted to decimal for computation

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
  -  Inputs: 200, 15
  -  Output: $30.0, $230.0
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
---
Algorithm
---------
- Prompt user for bill amount
- Set bill to this
- Prompt user for tip percentage
- Set tip_rate to (this / 100)
- Set tip to tip_rate * bill
- Set total = bill + tip
- Display in correct fashion

Code
----
=end

print "What is the bill? "
bill = gets.chomp.to_f

print "What is the tip percentage? "
tip_rate = gets.chomp.to_f / 100

tip = (tip_rate * bill).round(2)
total = (bill + tip).round(2)

puts "The tip is $#{tip}"
puts "The total is $#{total}"

# further exploration
  # two decimal places for results
  # use Kernel#format

puts "The tip is $#{sprintf("%.2f", tip)}"
puts "The total is $#{sprintf("%.2f", total)}"
