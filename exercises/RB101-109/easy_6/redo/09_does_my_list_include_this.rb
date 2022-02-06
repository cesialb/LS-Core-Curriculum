=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: array and search value
-  Output: true if search value is in array, false if not
---
**Problem Domain:**
- Cannot use Array#include? method
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
- Input values are an array and search value
- Output value is a boolean

---
Algorithm
---------
- Method passes in array and search value as arguments
- Iterate through array, accessing each element
  - If the element equals the search value, return true
- Have false as a fall-off return value

Code
----
=end

def include?(arr, search_value)
  arr.each do |ele|
    return true if ele == search_value
  end
  false
end

# better solution
def include?(array, value)
  !!array.find_index(value)
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false