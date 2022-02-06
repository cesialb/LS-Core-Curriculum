# Process the problem
  # Expected inputs: array of integers
  # Expected outputs: average of all elements in array
  # Rules: array will never be empty, always positive integers, average must be integer

# Examples
  # [1, 6] = 3 (integer division: 7 / 2 == 3)
  # [1, 5, 87, 45, 8, 8] == 25

# Data structure
  # final result will be an integer

# Algorithm
  # Method accepts argument - assume array is non-empty and w/positive integers only
  # Iterate through array, without mutating, and add each element to an overall sum value
  # Run integer division on sum and return it

# Code!

def average(array)
  sum = 0
  array.each {|num| sum += num }

  average = sum / array.size
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40