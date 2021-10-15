# Process the problem
  # Expected inputs: one argument - a string
  # Expected outputs: string returned, with the words >= 5 characters reversed
  # Rules: spaces only included when more than one word is present

# Examples
  # Professional = lanoisseforP
  # Walk around the block = Walk dnuora the kcolb

# Data structures
  # Array should be useful - holding split strings together, then returning final string

# Algorithm
  # Method accepts string
  # String gets split into an array of words, delimited by whitespace
  # Iterate through array, finding elements 5 characters or longer
  # If found, reverse that string - transforming the array(!)
  # Once done, convert the array back to a string

# Code!

def reverse_words(string)
  arr_words = string.split
  arr_words.map do |word|
    word.reverse! if word.length >= 5
  end
  arr_words.join(" ")
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS