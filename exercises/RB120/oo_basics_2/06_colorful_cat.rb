=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs:
-  Output:
---
**Problem Domain:**
- Create a class named Cat that prints a greeting when #greet is invoked
  # Greeting should include the name and color of cat
- Use constant to define the color
---
**Implicit Requirements:**
- Constant will be within an instance method, probably initialize
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
- Create a class Cat
- Define initialize method, pass in name and color as arguments
  - Set @name to name and COLOR = color
- Define greet method
  - Print desired output

Code
----
=end

class Cat
  attr_reader :name
  COLOR = 'purple'

  def initialize(name)
    @name = name
  end

  def greet
    puts "Hello! My name is #{self.name} and I'm a #{COLOR} cat!"
  end
end

kitty = Cat.new('Sophie')
kitty.greet