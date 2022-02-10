=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs:
-  Output:
---
**Problem Domain:**
- Add the appropriate accessor methods so that @name is capitalized upon assignment
---
**Implicit Requirements:**
---
**Clarifying Questions:**
1.
2.
3.
---
**Mental Model:**
- Upon assignment => it needs to be capitalized in the setter method
- There is a reader method as well
- Both methods are being called from outside the class
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
  def name=(n)
    @name = n.capitalize
  end

  def name
    @name
  end
end

person1 = Person.new
person1.name = 'eLiZaBeTh'
puts person1.name