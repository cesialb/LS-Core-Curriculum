=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: an array of hashes
  - array of books
  - hashes hold the title, author, and year published 
-  Output: the array of hashes ordered by year of publication, earliest to latest
---
**Problem Domain:**
---
**Implicit Requirements:**
---
**Clarifying Questions:**
1. What is earliest to latest?
  - Older in time to more recent
2. 
3.
---
**Mental Model:**
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: no examples given
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
- Working with an array of hashes
- A new array of hashes will be returned

Algorithm
---------
- The array holds hashes
- The hashes each hold key-value pairs - symbols and strings respectively
- We need to compare the title key of each hash
- The title keys hold strings that represent the year published - but we cannot sort strings like how integers sort
- The strings need to be converted to integers, then compared

- Iterate through each hash in the array via #sort
- Compare a[:published].to_i <=> b[:published].to_i
- Save in a variable, sorted_books

Code
----
=end


books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

sorted_books = books.sort do |hash1, hash2|
  hash1[:published] <=> hash2[:published]
end

p sorted_books

# better solution
books.sort_by do |book|
  book[:published]            # the strings are all four chars in length, so no need to convert to integers!  
end
