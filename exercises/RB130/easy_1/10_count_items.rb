# Problem
# write method that takes array as arg
# block returns true or false depending on value of array element
# method itself returns a count of # of times block returns true
# can not use Array#count or Enumerable#count

# Mental Model
# set a counter and iterate through array 
# increment counter by 1 every time the block returns true
# return counter

# Data Structure
# input - array
# output - integer

# Algorithm
# set counter to 0
# Array#each to iterate, yield element to block
# counter += 1 when block is true
# return counter at the end

def count(array)
  counter = 0
  array.each { |element| counter += 1 if yield(element) }
  counter
end

p count([1,2,3,4,5]) { |value| value.odd? } == 3
p count([1,2,3,4,5]) { |value| value % 3 == 1 } == 2
p count([1,2,3,4,5]) { |value| true } == 5
p count([1,2,3,4,5]) { |value| false } == 0
p count([]) { |value| value.even? } == 0
p count(%w(Four score and seven)) { |value| value.size == 5 } == 2