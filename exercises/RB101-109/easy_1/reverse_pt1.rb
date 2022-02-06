# Process the problem
  # Expected inputs: one argument - a string
  # Expected outputs: a string with the words in reverse order
  # Rules: no rules

# Examples/test cases
  # "Hello World" = "World Hello"
  # "Good Morning Sonic" = "Sonic Morning Good"

# Data structures
  # Holding the words in an array might be good? Then converting to a final reversed string

# Algorithm
  # Method takes string as argument
  # String is split into an array, delimited by the whitespace
  # Last word is popped off of array and pushed into another new array
  # Words pop off and push to new array until they can't be
  # New array is then converted to string, whitespace between each element

# Code!

def reverse_sentence(sentence)
  # splitting string into array of words
  rev_sentence = sentence.split

  reverse_arr = []

  # pushing last word into new array
  while rev_sentence.length != 0
    reverse_arr.push(sentence.pop)
  end

  reverse_arr = reverse_arr.join(" ")
end

# better solution
def reverse_sentence(sentence)
  rev_sentence = sentence.split.reverse.join(" ")
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''