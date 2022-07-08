# Problem
# write a custom #each_with_object method, takes an array and block
# yields each element and an object of some sort as an argument to the block
# method returns the final value of the object
# if array is empty, return the OG object passed as second argument

# Mental Model
# yield the element and some variable to the block
# return the variable once done

# Data Structure
# input - array and object
# output - object

# Algorithm
# array.each 
  # yield(element, object) to the block
# return object

def each_with_object(array, object)
  array.each { |element| yield(element, object) }
  object
end

result = each_with_object([1, 3, 5], []) do |value, list|
  list << value**2
end
p result == [1, 9, 25]

result = each_with_object([1, 3, 5], []) do |value, list|
  list << (1..value).to_a
end
p result == [[1], [1, 2, 3], [1, 2, 3, 4, 5]]

result = each_with_object([1, 3, 5], {}) do |value, hash|
  hash[value] = value**2
end
p result == { 1 => 1, 3 => 9, 5 => 25 }

result = each_with_object([], {}) do |value, hash|
  hash[value] = value * 2
end
p result == {}