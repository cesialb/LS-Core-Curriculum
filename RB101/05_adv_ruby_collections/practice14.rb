=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: a hash of strings as keys, and hashes as values
-  Output: an array containing the colors of fruits, and sizes of vegetables
---
**Problem Domain:**
---
**Implicit Requirements:**
---
1. Sizes should be uppercased, and colors should be capitalized.

**Clarifying Questions:**
1. Uppercased?
  - All caps
2.
3.
---
**Mental Model:**
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: hsh
  -  Output: [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]
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
- Input value is a hash - strings as keys, hashes as values
- Return value is an array holding the values tied to :colors and :size, edited 

Algorithm
---------
- Create new_array to hold :colors and :size values
- Iterate through the outer hash - no need to return anything - pushing into new_array
  - Iterate through outer hash's values (which are key-value pairs)
- Once iterating through the pairs:
  - if the key is :colors, iterate through each element and capitalize each one
    - push the entire array to new_array
  - if the key is :size, uppercase the element and push to new_array

Code
----
=end

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

# new_array = []
# hsh.each_value do |values|
#   values.each do |key, value|
#     sub_arr = []
#     if key == :colors
#       sub_arr = value.map do |element|
#         element.capitalize
#       end
#     elsif key == :size
#       sub_arr << value.upcase
#     else
#       next
#     end

#     new_array << sub_arr
#   end
# end

# better solution
new_arr = hsh.map do |_, value|
  if value[:type] == 'fruit'
    value[:colors].map do |color|
      color.capitalize
    end
  elsif value[:type] == 'vegetable'
    value[:size].upcase
  end
end

p new_arr