# Problem
# modify #gather so the display/output of #items is moved to a block
# implementation should be left up to the user of #gather

# Mental Model
# all we want to do is one thing - deliver the items to #gather
# everything else is done in the block, whatever the user wants

# Data Structure
# items: array of strings
# gather, items as argument and implicit block

# Algorithm
# delete both puts calls
# yield(items.join(', ') to the block)
# do nothing else

# solution actually leaves the puts calls there

items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "Nice selection of food we have gathered!"
end