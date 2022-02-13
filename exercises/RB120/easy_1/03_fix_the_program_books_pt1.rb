=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs:
-  Output:
---
**Problem Domain:**
- Fix the program so that it produces the expected output

- Expected output:
The author of "Snow Crash" is Neil Stephenson.
book = "Snow Crash", by Neil Stephenson.
---
**Implicit Requirements:**
---
**Clarifying Questions:**
1.
2.
3.
---
**Mental Model:**
- Currently there is an "undefined method title" for the Book object call
- There needs to be a getter method for @title and @author
- There is no setting done outside of the class
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

class Book
  attr_reader :title, :author

  def initialize(author, title)
    @author = author
    @title = title
  end

  def to_s
    %("#{title}", by #{author})
  end
end

book = Book.new("Neil Stephenson", "Snow Crash")
puts %(The author of "#{book.title}" is #{book.author}.)
puts %(book = #{book}.)