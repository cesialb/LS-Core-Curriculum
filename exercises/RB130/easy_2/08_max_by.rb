# Problem
# write custom #max_by, takes an array and a block
# if array is empty, return nil
# return the element for which the block returned the largest value

# Mental Model
# return nil if array is empty
# max_element = element at index 0
# iterate through array
  # if return value for max_element is less than return value for current element
    # max_element = current element
# return max_element

# Data Structure
# input - array
# output - nil or array element

# Algorithm
# return nil if array.empty?
# max_element = array.first
# array.each
  # if yield(max_element) < yield(current_element)
    # max_element = current_element
# max_element

def max_by(array)
  return nil if array.empty?
  max_element = array.first

  array.each do |current_element|
    if yield(max_element) < yield(current_element)
      max_element = current_element
    end
  end

  max_element
end

p max_by([1, 5, 3]) { |value| value + 2 } == 5
p max_by([1, 5, 3]) { |value| 9 - value } == 1
p max_by([1, 5, 3]) { |value| (96 - value).chr } == 1
p max_by([[1, 2], [3, 4, 5], [6]]) { |value| value.size } == [3, 4, 5]
p max_by([-7]) { |value| value * 3 } == -7
p max_by([]) { |value| value + 5 } == nil