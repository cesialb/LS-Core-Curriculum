# Problem
# write custom #each_with_index, takes an array and block
# passes element and its index to the block, block does whatever with it
# method returns original collection

# Mental Model
# iterate through array, yield element and the index of the element to the block
# return array at the end of the method

# Data Structure
# input - array
# output - same array as return value

def each_with_index(array)
  array.each { |element| yield(element, array.index(element)) }
end

result = each_with_index([1, 3, 6]) do |value, index|
  puts "#{index} -> #{value**index}"
end

puts result == [1, 3, 6]