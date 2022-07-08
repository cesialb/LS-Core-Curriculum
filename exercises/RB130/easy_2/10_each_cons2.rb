# Problem
# update the #each_cons method from previous exercise
# now it takes an argument that specifies how many elements should be processed at a time

# Mental Model
# method now takes an array and another argument for how many eles to process
# counter for tracking the element indexes
# iterate through the array
  # rolling_counter = counter
  # do this (argument) times
    # yield element at index rolling_counter 
    # increment rolling_counter by 1
  # increment counter by 1
# return nil at the end

# Data Structure
# input - array, integer
# output - nil

# Algorithm
# method passes in array and integer
# counter = 0
# array.each 
  # rolling_counter = counter
  # argument.times 
    # yield(array[rolling_counter])
    # rolling_counter += 1
  # counter += 1
  # break if counter >= array.size
# return nil

def each_cons(array, processing_number)
  counter = 0
  array.each do |element|
    rolling_counter = counter
    processing_number.times do 
      yield(array[rolling_counter])
      rolling_counter += 1
    end
    counter += 1
    break if counter >= array.size
  end
  nil
end

# couldn't solve :(

def each_cons(array, n)
  array.each_index do |index|
    break if index + n - 1 >= array.size
    yield(*array[index..(index + n - 1)])
  end
  nil
end
  
hash = {}
each_cons([1, 3, 6, 10], 1) do |value|
  hash[value] = true
end
p hash

hash = {}
each_cons([1, 3, 6, 10], 2) do |value1, value2|
  hash[value1] = value2
end
p hash