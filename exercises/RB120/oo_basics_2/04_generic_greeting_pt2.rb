=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs:
-  Output:
---
**Problem Domain:**
- Add two methods, ::generic_greeting and #personal_greeting
---
**Implicit Requirements:**
- ::generic_greeting will be a class method
- #personal_greeting will be an instance method
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
Code
----
=end

class Cat

  def self.generic_greeting
    puts "Hello! I'm a cat!"
  end

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def personal_greeting
    puts "Hello! My name is #{self.name}!"
  end
end

kitty = Cat.new('Sophie')

Cat.generic_greeting
kitty.personal_greeting