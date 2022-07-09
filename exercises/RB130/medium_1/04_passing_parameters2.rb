# Problem
# write a method that takes array as argument
# method yields contents of the array to a block
# first two elements should be ignored
# groups everything else in a raptors array

# Mental Model
# use splat operator to create raptors array
# how to ignore first two elements in block variable?
  # just use underscores and then splat operator

# Data Structure
# input - array
# yields the array to the block

# Algorithm
# see MM

def example(array)
  yield(array)
end

arr = ['raven', 'finch', 'hawk', 'eagle']
example(arr) { |_, _, *raptors| p raptors }