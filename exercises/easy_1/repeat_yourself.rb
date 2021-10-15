# Process the problem
  # Expected input: any string, any positive integer
  # Expected output: that string repeated int times
  # Rules: needs a string, int has to be positive, string repeats on separate lines

# Examples/test cases
  # 'Hello', 3 --> Hello Hello Hello
  # 'Welcome', 0 --> Error: not a positive int
  # 'Ayo', 1 --> Ayo
  # 'Good morning!', -3 --> Error: not a positive int
  # 'Hello' --> Error: no integer given, not enough arguments

# Data structures
  # puts after each repeat will suit this program - no need to store in structure

# Algorithm
  # Have an argument for the string, and an argument for the integer
  # Check if input is an integer (is it a float?), then check if positive
  # If integer is positive, repeat printing of string int times

# Code!

# checking integer status - is it a float?
def valid_int?(num)
  num.to_i == num
end

# repeating method
def repeat(string, num)
  if valid_int?(num)
    if num >= 0
      num.times {puts string}
    else
      puts "Can't repeat negative times!"
    end
  else
    puts "Not an integer!"
  end
end

# test cases
repeat('Hello', 3)
puts "=========="
repeat('Hello', 3.7)
puts "=========="
repeat('Welcome To Jamrock', 5)
puts "=========="
repeat('Ayo', -3)
