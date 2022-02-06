# Process the problem
  # Expected inputs: positive integer
  # Expected outputs: sum of the positive integers' digits
  # Rules: try it without any looping constructs (while, until, each, etc.)

# Examples
  # 23 => 15
  # 496 => 19

# Data structures
  # final result will be an integer
  # Array could hold the split digits?

# Algorithm
  # Method accepts argument
  # Integer is converted to string, split, converted to int, summed (#reduce)
  # Return integer

# Code!

def sum(num)
  arr_num = num.digits
  sum = arr_num.reduce(:+)
end

# better solution
def sum(number)
  sum = 0
  str_digits = number.to_s.chars

  str_digits.each do |str_digit|
    sum += str_digit.to_i
  end

  sum
end

# better solution? perhaps less readable
def sum(num)
  num.to_s.chars.map{|num| num.to_i}.reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45