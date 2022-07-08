# Problem
# write a method #none for arrays
# returns false if return value of the block is true for any element
# otherwise, it returns true

# Mental Model
# iterate through array, accessing each element, yielding element to block
# return value of block is truthy? return false and stop there
# if it gets through that ok, return true

# Data Structure
# input - array
# output - boolean

# Algorithm
# define method, pass in argument
# iterate through array, yield element to block
# if return value of the block is truthy, return false and stop there
# use true as fall-off return value

def none?(array)
  array.each { |element| return false if yield(element) } 
  true
end

p none?([1, 3, 5, 6]) { |value| value.even? } == false
p none?([1, 3, 5, 7]) { |value| value.even? } == true
p none?([2, 4, 6, 8]) { |value| value.odd? } == true
p none?([1, 3, 5, 7]) { |value| value % 5 == 0 } == false
p none?([1, 3, 5, 7]) { |value| true } == false
p none?([1, 3, 5, 7]) { |value| false } == true
p none?([]) { |value| true } == true