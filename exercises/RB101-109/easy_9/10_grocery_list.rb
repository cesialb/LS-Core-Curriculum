=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: array of fruits with quantities
-  Output: converts into an array of the correct number of fruits
---
**Problem Domain:**
- Method takes in array of fruits - nested arrays, each holding a fruit string and a number
- The number signifies the number of times the fruit will be in the return array
- Return the array

---
**Implicit Requirements:**
- You'll never see 0 as a quantity
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
  -  Inputs: [['apples', 3], ['orange', 1], ['bananas', 2]]
  -  Output: ['apples', 'apples', 'apples', 'orange', 'bananas', 'bananas']
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
- Input value is a nested array of strings and integers
- Output value is a one-dimensional array of strings

---
Algorithm
---------
- Method passes in array as argument
- Iterate through the array, accessing each subarray - transforming the subarray
  - Loop the number of times as the subarray's integer element
    - Return the string as an element of the transformed subarray
- Finish iterating, flatten the array and return it

Code
----
=end

def buy_fruit(grocery_list)
  new_list = []
  grocery_list.each do |sub_arr|
    sub_arr[1].times { new_list << sub_arr[0] }
  end
  new_list
end

# cleaner solution
def buy_fruit(list)
  expanded_list = []

  list.each do |item|
    fruit, quantity = item[0], item[1]
    quantity.times { expanded_list << fruit }
  end

  expanded_list
end

# more idiomatic solution
def buy_fruit(list)
  list.map { |fruit, quantity| [fruit] * quantity }.flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]