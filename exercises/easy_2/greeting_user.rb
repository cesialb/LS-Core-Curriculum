=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: User's name, or user's name with an exclamation mark
-  Output: Either "Hello name." or "HELLO NAME. WHY ARE WE SCREAMING?"
---
**Problem Domain:**
---
**Implicit Requirements:**
---
If the last character is an exclamation mark, we move to all caps response.
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
  -  Inputs: Bob
  -  Output: Hello Bob.
-  Example 2
  -  Inputs: Bob!
  -  Output: HELLO BOB. WHY ARE WE SCREAMING?
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
No structure needed, strings will be fine.

Algorithm
---------
START
Prompt user for name
Check last character in string
If it's a !, we move to all caps response
Otherwise, we use usual Hello response.
PRINT response
END

Code
----
=end

=begin
def display(name)
  Kernel.puts("Hello #{name}.")
end

def loud_display(name)
  name = name.chop

  Kernel.puts("HELLO #{name.upcase}. WHY ARE WE SCREAMING?")
end

Kernel.puts("What is your name?")
name = Kernel.gets().chomp()

if name[-1] != '!'
  display(name)
else
  loud_display(name)
end
=end


# further exploration

def display(name)
  Kernel.puts("Hello #{name}.")
end

def loud_display(name)
  Kernel.puts("HELLO #{name.upcase}. WHY ARE WE SCREAMING?")
end

Kernel.puts("What is your name?")
name = Kernel.gets().chomp()

if name[-1] != '!'
  display(name)
else
  name.chop!
  loud_display(name)
end