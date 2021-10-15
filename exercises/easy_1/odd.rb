# Process the problem
  # Expected input: any integer - assume the argument is an int, so no need to test for int
  # Expected output: boolean value, if the int's absolute value is odd or not
  # Rules: needs an int, returns a boolean value, can't use #odd? or #even?

# Examples/test cases
  # 2 --> false
  # -17 --> true
  # -8 --> false
  # 0 --> false

# Data structures
  # returning of boolean value will suit, no need for a structure

# Algorithm
  # method takes in one argument, a number
  # obtain absolute value of that number - how?
    # #abs is a method in Integer class
  # check if abs_value % 2 == 0 or not - if it does, it's even and return false
  # return the boolean value

# Code!

def is_odd?(num)
  #num = num.abs      # no need! % is a modulo in Ruby - if right number is positive,
  if num % 2 != 0     # then the result will be positive too
    return true
  else
    return false
  end
end

puts is_odd?(2)
puts is_odd?(5)
puts is_odd?(-17)

# further explorations - if #remainder were used?

def is_odd?(num)
  num = num.abs      
  if num.remainder(2) != 0
    return true
  else
    return false
  end
end
