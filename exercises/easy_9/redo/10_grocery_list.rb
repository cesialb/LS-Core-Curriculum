=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: array of elements - fruits and their quantities
-  Output: array of the correct number of fruits, as strings
---
**Problem Domain:**
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
  -  Inputs: [["apples", 3], ["orange", 1], ["bananas", 2]]
  -  Output: ["apples", "apples", "apples", "orange", "bananas","bananas"]
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
- Input value is a nested array, of three arrays of strings and integers
- Output value is a 1D array of strings

---
Algorithm
---------
- Method passes in array as argument
- Create grocery list, make it empty
- Iterate through array, accessing each element
  - Use times method and call it on element at index 1
    - Push element at index 0 to grocery list
- Return grocery list

Code
----
=end

def buy_fruit(list_arr)
  grocery_list = []
  list_arr.each do |sub_arr|
    sub_arr[1].times { grocery_list << sub_arr[0] }
  end
  grocery_list
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
["apples", "apples", "apples", "orange", "bananas","bananas"]