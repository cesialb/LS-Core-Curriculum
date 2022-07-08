# Problem
# write custom #map
# take an array as arg, and a block
# return a new array that contains return values from the block

# Mental Model
# iterate through array
# assign return values from the block to new array
# return new array

# Data Structure
# input - array
# output - new array

# Algorithm
# call #each_with_object on array, begin iterating
  # result << yield(element)

def map(array)
  array.each_with_object([]) do |element, result|
    result << yield(element)
  end
end

p map([1, 3, 6]) { |value| value**2 } == [1, 9, 36]
p map([]) { |value| true } == []
p map(['a', 'b', 'c', 'd']) { |value| false } == [false, false, false, false]
p map(['a', 'b', 'c', 'd']) { |value| value.upcase } == ['A', 'B', 'C', 'D']
p map([1, 3, 4]) { |value| (1..value).to_a } == [[1], [1, 2, 3], [1, 2, 3, 4]]