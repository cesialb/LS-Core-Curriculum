# Process the problem
  # Expected inputs: one argument - a positive integer
  # Expected outputs: list of digits in the number
  # Rules: has to be a positive integer

# Examples/test cases
  # 12345 = [1, 2, 3, 4, 5]
  # 7 = [7]
  # 375290 = [3, 7, 5, 2, 9, 0]
  # -4 = Error
  # 4.2 = Error

# Data structures
  # An array will be good for this - it will return an array

# Algorithm
  # method takes argument
  # check to see if argument is an int, and if it's a positive int
  # if it is, split the integer into an array by each digit
    # how?
      # convert number to string, split into an array, then convert each string into an int
  # return array

# Code!

def valid_int?(num)
  num.to_i == num
end

def positive_int?(num)
  num >= 0
end

def digit_list(num)
  if valid_int?(num) && positive_int?(num)
    num = num.to_s
    array = num.split("")
    int_array = array.map {|ele| ele.to_i }
    return int_array
  else
    puts "Invalid argument."
  end
end

# better method - no need to verify ints? also no need for explicit return!
def digit_list(num)
  num.to_s.chars.map {|char| char.to_i}
end

#

puts digit_list(12345) == [1, 2, 3, 4, 5]
puts digit_list(7) == [7]
