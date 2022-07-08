# Problem
# write method #drop_while, takes array as arg
# iterates through the array, passing each element to the block
# it stops iterating when the return value from block is false
# when it's false, that element and every other element after it are returned
# if every block return value is true, array is returned empty

# Mental Model
# set return array to empty
# set counter to 0
# loop until counter > arr.size
  # break when return value of block is false
  # counter += 1
# return array << arr[counter..-1]

# Data Structure
# input - array
# output - new array

def drop_while(array)
  counter = 0
  dropped = false

  until counter > array.size
    if !yield(array[counter])
      dropped = true
      break
    end
    counter += 1
  end

  dropped ? array[counter..-1] : []
end

p drop_while([1, 3, 5, 6]) { |value| value.odd? } == [6]
p drop_while([1, 3, 5, 6]) { |value| value.odd? } == [6]
p drop_while([1, 3, 5, 6]) { |value| value.even? } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| true } == []
p drop_while([1, 3, 5, 6]) { |value| false } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| value < 5 } == [5, 6]
p drop_while([]) { |value| true } == []