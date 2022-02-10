=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs:
-  Output:
---
**Problem Domain:**
- Multiply @age by 2 upon assignment
- Then multiply @age by 2 again when @age is returned by the getter method
---
**Implicit Requirements:**
---
**Clarifying Questions:**
1.
2.
3.
---
**Mental Model:**
- Setter method will involve multiplying @age by 2
- Getter method will involve multiplying @age by 2
- Both methods are accessible outside of the class - public
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
  def age=(a)
    @age = a * 2
  end

  def age
    @age * 2
  end
end

# another solution - keeping the calculations private and accessible to any public class method
class Person
  def age=(age)
    @age = double(age)
  end

  def age
    double(@age)
  end

  private

  def double(value)
    value * 2
  end
end

person1 = Person.new
person1.age = 20
puts person1.age
