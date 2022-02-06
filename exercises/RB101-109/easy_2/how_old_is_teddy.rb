=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: Nothing
-  Output: Displaying of Teddy's age, in between 20 and 200
---
**Problem Domain:**
---
**Implicit Requirements:**
The numbers should be just integers, considering it is age
Pseudorandom generator is best
---
**Clarifying Questions:**
1. Just integers?
2.
3.
---
**Mental Model:**
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: Nothing
  -  Output: Random age
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
Randomization method that has a range of 20 and 200.
No real structure outside of that
---
Algorithm
---------
Display a statement after randomizing between 20 and 200.
Code
----
=end

def display_results(age, name)
  if name.empty?
    Kernel.puts("Teddy is #{age} years old!")
  else
    Kernel.puts("#{name} is #{age} years old!")
  end
end

age = rand(20..200)

#display_results(age)

# further exploration

name = ''

Kernel.puts("Enter a name: ")
name = Kernel.gets().chomp()

display_results(age, name)