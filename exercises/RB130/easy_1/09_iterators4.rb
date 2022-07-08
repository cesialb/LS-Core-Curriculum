# Problem
# write a method #one? for arrays
# if the return value of the block returns truthy for exactly one element, return true
# otherwise, return false
# #one? will stop searching the second time the block returns true
# stop processing elements if a second truthy value is found

# Mental Model
# keep truthy counter, set to 0
# iterate through elements and yield each to the block
# if truthy is found, counter += 1
# if counter == 2, stop processing and return false
# otherwise, return true as fall-off value

# Data Structure
# input - array
# output - boolean 

# Algorithm
# define method, pass in array as arg
# set truthy_counter to 0
# iterate through array, pass each element to block
  # truthy_counter += 1 if yield(element)
  # return false if truthy_counter == 2
# true as fall-off

def one?(array)
  truthy_counter = 0
  array.each do |element|
    truthy_counter += 1 if yield(element)
    break if truthy_counter == 2
  end
  truthy_counter == 1
end

p one?([1, 3, 5, 6]) { |value| value.even? }    # -> true
p one?([1, 3, 5, 7]) { |value| value.odd? }     # -> false
p one?([2, 4, 6, 8]) { |value| value.even? }    # -> false
p one?([1, 3, 5, 7]) { |value| value % 5 == 0 } # -> true
p one?([1, 3, 5, 7]) { |value| true }           # -> false
p one?([1, 3, 5, 7]) { |value| false }          # -> false
p one?([]) { |value| true }                     # -> false