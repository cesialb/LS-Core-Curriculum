# Problem:
# write method that takes sorted array of integers
# returns array including all of the missing integers b/w first and last arguments

# Mental Model:
# create array that includes all integers from first to last
# iterate through that array and see if the element exists in original array - use select

# Data Structure:
# input - array
# output - new array

# Algorithm
# new_array = (arr[0]..arr[-1]).to_a
# new_array.reject { |ele| arr.include?(ele) }

def missing(arr)
  new_array = (arr.first..arr.last).to_a
  new_array.reject { |ele| arr.include?(ele) }
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []