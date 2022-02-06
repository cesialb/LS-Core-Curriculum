=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs:
-  Output:
---
**Problem Domain:**
- Using following code, add an instance method named #compare_secret
  - It compares the value of @secret from person1 with value of @secret from person2
---
**Implicit Requirements:**
- #secret is a protected method, so we will need to call it from an instance method
- Protected methods allow for access b/w class instances
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
- Define compare_secret instance method, pass in Person object as an argument
  - self.secret == person2.secret

Code
----
=end

class Person
  attr_writer :secret

  def compare_secret(person)
    self.secret == person.secret
  end

  protected

  attr_reader :secret
end

person1 = Person.new
person1.secret = 'Shh.. this is a secret!'

person2 = Person.new
person2.secret = 'Shh.. this is a different secret!'

puts person1.compare_secret(person2)
