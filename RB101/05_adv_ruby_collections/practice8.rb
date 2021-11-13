=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: a hash of symbol keys and array values
-  Output: printing all of the vowels from the string values
---
**Problem Domain:**
---
**Implicit Requirements:**
---
1. You have to use the #each method

**Clarifying Questions:**
1. What's a vowel?
  - a, e, i, o, u
2. Printing?
  - Either on one line or one vowel per line, doesn't matter
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
- Input is a hash of symbol keys and string values
- Some keys hold more than one string, some just one
- Return value - all vowels in the string values - should be held in an array, then printed

Algorithm
---------
- Create array to hold vowels
- Iterate through each key in the hash, accessing the values
  - We have no need for the keys in this
- Iterate through the array values, accessing the string(s)
- Iterate through the strings, checking against a, e, i, o, or u
  - How to iterate through strings?
    - chars method breaks it into an array, then iterate
- If true, push them to the vowel array. If not, do nothing
- Print vowel array

Code
----
=end

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], 
      third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}
    
#vowel_array = []

hsh.each_value do |string_array|
  string_array.each do |word|
    word.chars.each do |letter|
      if letter == 'a' || letter == 'e' || letter == 'i' || letter == 'o' || letter == 'u'
        #vowel_array << letter
        puts letter
      end
    end
  end
end

#vowel_array.each do |vowel|
  #puts vowel
#end

# better solution
vowels = 'aeiou'

hsh.each do |_, value|
  value.each do |str|
    str.chars.each do |char|
      puts char if vowels.include?(char)
    end
  end
end