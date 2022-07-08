# Problem
# write a method #any for arrays
# takes array as argument, and a block
# return true if the block returns true for any of the elements
# otherwise, return false
# if array is empty, return false

# Mental Model
# build the method, yield to the block
# the return value of the block will be tested as true or untrue
# if true, return false
# if it gets through the rest, return false as a fall-off

# Data Structure
# input - array
# output - boolean

# Algorithm
# define method, pass in array as argument
# iterate through array, pass element to block using yield
# return true if the return value is truthy
# use false as a fall-off return value

def any?(array)
  array.each { |element| return true if yield(element) }
  false
end

p any?([1, 3, 5, 6]) { |value| value.even? } == true
p any?([1, 3, 5, 7]) { |value| value.even? } == false
p any?([2, 4, 6, 8]) { |value| value.odd? } == false
p any?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
p any?([1, 3, 5, 7]) { |value| true } == true
p any?([1, 3, 5, 7]) { |value| false } == false
p any?([]) { |value| true } == false