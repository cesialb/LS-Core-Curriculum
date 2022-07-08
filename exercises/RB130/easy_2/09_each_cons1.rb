# Problem
# write custom #each_cons method, takes an array and a block
# passes two consecutive elements at a time to the block
# returns nil

# Mental Model
# set counter to 0
# begin iterating through array
  # yield element at index counter and counter + 1 to the block
  # increment counter by 2
# keep doing this until counter >= than array size

# Data Structure
# input - array
# output - nil

# Algorithm
# set counter to 0
# loop until counter >= array.size
  # yield array[counter] and array[counter + 1] to block
# nil as fall-off value

def each_cons(array)
  return nil if array.empty?

  counter = 0
  until (counter + 1) == array.size
    yield(array[counter], array[counter + 1])
    counter += 1
  end

  nil
end

# better solution
def each_cons(array)
  array.each_with_index do |item, index|
    break if index + 1 >= array.size
    yield(item, array[index + 1])
  end
  nil
end

hash = {}
result = each_cons([1, 3, 6, 10]) do |value1, value2|
  hash[value1] = value2
end
p result == nil
p hash == { 1 => 3, 3 => 6, 6 => 10 }

hash = {}
result = each_cons([]) do |value1, value2|
  hash[value1] = value2
end
p hash == {}
p result == nil

hash = {}
result = each_cons(['a', 'b']) do |value1, value2|
  hash[value1] = value2
end
p hash == {'a' => 'b'}
p result == nil