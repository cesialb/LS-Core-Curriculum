=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: array and a hash
-  Output: console output
---
**Problem Domain:**
- Array has the full name of the person, when joined with a space
- Hash has the person's title and occupation
- Console output is a greeting using array and hash elements
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
- Input values are array and hash
- Output value is console output

---
Algorithm
---------
- Method passes in array and hash as argument
- Set name to array joined with a space
- Set title to hash[:title]
- Set occupation to hash[:occupation]
- Print desired output

Code
----
=end

def greetings(name, job)
  full_name = name.join(' ')
  title = job[:title]
  occupation = job[:occupation]

  puts "Hello, #{full_name}! Nice to have a #{title} #{occupation} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })