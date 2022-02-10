=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs:
-  Output:
---
**Problem Domain:**
- Given the following code, modify #start_engine in Truck
  - Append "Drive fast, please!" to the return value of #start_engine in Vehicle
- The 'fast' should be the value of speed

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
---
Algorithm
---------
- Add super + 'Drive #{speed}, please!' to Truck#start_engine
Code
----
=end

class Vehicle
  def start_engine
    'Ready to go!'
  end
end

class Truck < Vehicle
  def start_engine(speed)
    super() + ' ' + "Drive #{speed}, please!"
  end
end

truck1 = Truck.new
puts truck1.start_engine('fast')