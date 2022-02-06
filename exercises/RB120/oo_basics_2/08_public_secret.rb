=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs:
-  Output:
---
**Problem Domain:**
- Create a class named Person with an instance variable @secret
- Use setter method to add a value to @secret
- Use getter method to print @secret
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
- Create class Person
- Define initialize instance method for Person, setting @secret to ''
- Create setter and getter methods for @secret
  - Setter method sets desired output

Code
----
=end

class Person
  def initialize
    @secret = ''
  end

  # could just use attr_accessor :secret instead of the below two methods
  
  def secret
    @secret
  end

  def secret=(value)
    @secret = value
  end
end



person1 = Person.new
person1.secret = 'Shh.. this is a secret!'
puts person1.secret