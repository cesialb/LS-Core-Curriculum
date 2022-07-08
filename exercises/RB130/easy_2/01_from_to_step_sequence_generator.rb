# Problem
# write a method that acts like Range#step, but doesn't operate on a range
# method takes 3 args: starting value, ending value, step value applied to each iteration
# method also takes a block, yields to it
# what's a good return value for this?

# Mental Model
# rolling value = starting value
# iterate until rolling value == ending value
  # yield rolling value to block
  # reassign rolling value += step value
# return original starting value?

# Data Structure
# input - three integers
# output - nothing (except for whatever the block does, unconcerned with this)
# return value - OG starting value?

# Algorithm
# rolling_value = starting_value
# until rolling_value == ending_value
  # yield(rolling_value)
  # rolling_value += step_value
# starting_value

def step(starting_value, ending_value, step_value)
  rolling_value = starting_value
  loop do
    yield(rolling_value)
    break if rolling_value + step_value > ending_value
    rolling_value += step_value
  end
  starting_value
end

step(1, 10, 3) { |value| puts "value = #{value}" }