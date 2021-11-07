# Process the problem
  # Inputs: an array of integers
  # Outputs: that same array, mutated, with every element doubled

# Examples:
  # Input: [1, 4, 3, 7, 2, 6]
  # Output: [2, 8, 6, 14, 4, 12]

# Data Structure:
  # The existing array, as we are mutating

# Algorithm:
  # Method has array as argument
  # Iterate through array, accessing every element
  # Mutate the element by doubling it
  # Stop iterating at the end of the array

def double_numbers!(numbers)
  counter = 0
  numbers.each do |_|
    numbers[counter] *= 2
    counter += 1
  end
end

my_numbers = [1, 4, 3, 7, 2, 6]
p double_numbers!(my_numbers) # => [2, 8, 6, 14, 4, 12]

# multiply by any number

# Process the problem
  # Inputs: an array of integers, and a number
  # Outputs: a new array, its elements multipled by that number

# Examples:
  # [1, 4, 3, 7, 2, 6]
  # [3, 12, 9, 21, 6, 18]

# Data Structure:
  # This will be an array that we return
  # A new array - keep the original intact

# Algorithm:
  # Method has array and an integer as arguments
  # Create new array
  # Begin iterating over argument array, accessing each element
  # Access current element and multiply it by the argument integer
  # Push to new array
  # Finish iterating and return new array

def multiply(numbers, multiplier)
  numbers.each_with_object([]) do |num, array|
    array << num * multiplier
  end
end

# Testing
my_numbers = [1, 4, 3, 7, 2, 6]
p multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]