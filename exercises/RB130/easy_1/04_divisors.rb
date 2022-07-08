# Problem
# write method that returns list of all divisors of positive integer passed in as arg
# return value can be in any sequence

# Mental Model:
# create an array from 1 to the number, reject any element that doesn't divide evenly into arg

# Data Structure
# input - array
# output - new array

# Algorithm
# method passes in argument
# (1..argument).reject { |ele| argument % ele != 0 }

def divisors(number)
  (1..number).select { |ele| number % ele == 0 }
end

p divisors(1) == [1]
p divisors(7) == [1, 7]
p divisors(12) == [1, 2, 3, 4, 6, 12]
p divisors(98) == [1, 2, 7, 14, 49, 98]
p divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute