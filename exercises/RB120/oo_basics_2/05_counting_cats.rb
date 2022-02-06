=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs:
-  Output:
---
**Problem Domain:**
- Create a class named Cat that tracks the number of times a new Cat object is instantiated
- Total number should be printed when ::total is invoked
---
**Implicit Requirements:**
- ::total will be a class method
---
**Clarifying Questions:**
1.
2.
3.
---
**Mental Model:**
- Build a class variable that will the amount of Cat objects created
- In the initialize instance method, add 1 to that class variable 
- Create a class method that returns that class variable

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
- Build a class for Cat
- Set @@number_of_cats to 0
- Define an initialize method
  - @@number_of_cats += 1
- Define a class method named total
  - Returns @@number_of_cats

Code
----
=end

class Cat
  @@number_of_cats = 0

  def initialize
    @@number_of_cats += 1
  end

  def self.total
    @@number_of_cats
  end
end

kitty1 = Cat.new
kitty2 = Cat.new

p Cat.total