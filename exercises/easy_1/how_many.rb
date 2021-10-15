# Process the problem
  # Expected inputs: an array of various strings
  # Expected outputs: each printed element & the # of times it appears in the array
  # Rules: case-sensitive

# Examples/test cases
  # vehicles = [ 'car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']
    # Output: car => 4, truck => 3, SUV => 1, motorcycle => 2

# Data structures
  # Hash would do well here - key (string) and the value (number of times it's in the array)

# Algorithm
  # method accepts array as argument
  # create empty hash
  # find unique words in array and count the number of times it's in the array
  # add word and count to the hash
  # iterate through hash and print the formatted result

# Code!

def count_occurrences(veh_array)
  occurrences = {}
  
  veh_array.uniq.each do |ele|
    occurrences[ele] = veh_array.count(ele)
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)