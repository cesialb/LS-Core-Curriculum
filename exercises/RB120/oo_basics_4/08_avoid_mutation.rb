=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs:
-  Output:
---
**Problem Domain:**
- Code is flawed - it allows @name to be modified from outside the method with a destructive call
- Fix code that it returns a copy of @name instead of a reference to it
---
**Implicit Requirements:**
---
**Clarifying Questions:**
1.
2.
3.
---
**Mental Model:**
- Returning a copy of @name => @name.dup?
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
Code
----
=end

class Person
  def initialize(name)
    @name = name
  end

  def name
    @name.dup
  end
end

person1 = Person.new('James')
person1.name.reverse!
puts person1.name