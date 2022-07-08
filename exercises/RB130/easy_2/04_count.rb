# Problem
# write another custom #count, but this time, it has an arbitrary number of args - 0 or more
# return number of elements that return a truthy value from the block

# Mental Model
# use splat operator! for the arguments!

# Data Structure
# input - argument(s)
# output - integer

# Algorithm
# splat operator for args
# set counter to 0
# iterate through newly formed array
  # counter += 1 if yield(element)
# return counter

def count(*arguments)
  counter = 0
  arguments.each { |element| counter += 1 if yield(element) }
  counter
end

p count(1, 3, 6) { |value| value.odd? } == 2
p count(1, 3, 6) { |value| value.even? } == 1
p count(1, 3, 6) { |value| value > 6 } == 0
p count(1, 3, 6) { |value| true } == 3
p count() { |value| true } == 0
p count(1, 3, 6) { |value| value - 6 } == 3