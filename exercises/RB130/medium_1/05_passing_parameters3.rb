# Problem
# given the code, fill out the calls for #gather
# they should output the comments below

# Mental Model
# #1 has two block variables
# #2 has three block variables
# #3 has two block variables
# #4 has four block variables

# #1? splat operator and one element at the end for wheat
# #2? fruit, *vegetables, wheat
# #3? 

items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

gather(items) do |*produce, wheat|
  puts produce.join(', ')
  puts wheat
end

# Let's start gathering food.
# apples, corn, cabbage
# wheat
# We've finished gathering!

gather(items) do |fruit, *vegetables, wheat |
  puts fruit
  puts vegetables.join(', ')
  puts wheat
end

# Let's start gathering food.
# apples
# corn, cabbage
# wheat
# We've finished gathering!

gather(items) do | fruit, *the_rest|
  puts fruit
  puts the_rest.join(', ')
end

# Let's start gathering food.
# apples
# corn, cabbage, wheat
# We've finished gathering!

gather(items) do | apple, corn, cabbage, wheat|
  puts "#{apple}, #{corn}, #{cabbage}, and #{wheat}"
end

# Let's start gathering food.
# apples, corn, cabbage, and wheat
# We've finished gathering!