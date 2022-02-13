=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs:
-  Output:
---
**Problem Domain:**
- Find a way to fix the uppercase problem
- to_s method upcases the instance variable @name
  - We want it upcased only here, but we don't want @name to be mutated in this way
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
Code
----
=end

class Pet
  attr_reader :name

  def initialize(name)
    @name = name.to_s
  end

  def to_s
    "My name is #{@name.upcase}."
  end
end

# name = 'Fluffy'
# fluffy = Pet.new(name)
# puts fluffy.name
# puts fluffy
# puts fluffy.name
# puts name

#further exploration
name = 42
fluffy = Pet.new(name)
name += 1
puts fluffy.name
puts fluffy
puts fluffy.name
puts name