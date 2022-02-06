=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: array and a search value
-  Output: true if the search value is in array, false if not
---
**Problem Domain:**
- Iterating through the array to see if the search value is in it.
- Return boolean based on findings.
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
  -  Inputs: include?([1, 2, 3, 4, 5], 3)
  -  Output: true
-  Example 2
  -  Inputs: include?([], 3)
  -  Output: false
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
- Input values are an array and a search value
- Output value is a boolean

---
Algorithm
---------
- Method passes in array and search value as arguments
- Iterate through array
  - If ele == search_value, return true
- Return false as fall-out safe

Code
----
=end

require 'pry'

def include?(arr, search_value)
  arr.each { |ele| return true if ele == search_value}
  false
end

# better solution
def include?(arr, search_value)
  !!array.find_index(value)
end

# further exploration
  # any? method would also work here
  # count method would work also

  def include?(arr, el)
    arr.count(el) > 0
  end

  def include?(array, value)
    array.any?(value)
  end

p include?([1,2,3,4,5], 3) == true
binding.pry
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false