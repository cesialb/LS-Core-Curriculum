=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: Bill amount, tip rate
-  Output: Tip, total bill, display of both
---
**Problem Domain:**
---
**Implicit Requirements:**
None
---
**Clarifying Questions:**
1. Should the format of the output be two decimal places? Looks like 1
2. Dollar signs?
3. 
---
**Mental Model:**
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: 200, 15
  -  Output: Tip is $30.0, total is $230.0
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
No data structure needed, computation and display should be fine.
---
Algorithm
---------
START
User prompted for bill amount and tip rate
SET bill_amount and tip_rate 
SET tip = bill_amount * tip_rate
SET total = bill_amount + tip
PRINT The tip is $TIP
PRINT The total is $TOTAL
END

Code
----
=end

# includes further exploration

def display_results(total, tip)
  Kernel.puts("The tip is $%.2f" % [tip])
  Kernel.puts("The total is $%.2f" % [total])
end

Kernel.puts("What is the bill?")
bill_amount = Kernel.gets().to_f

Kernel.puts("What is the tip percentage?")
tip_rate = Kernel.gets().to_f

tip_rate = tip_rate / 100

tip = (bill_amount * tip_rate)
total = bill_amount + tip

display_results(total, tip)

