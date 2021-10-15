# Process the problem
  # Expected inputs: positive integer and a boolean
  # Expected outputs: bonus for salary
  # Rules: if boolean == true, bonus is half the int. If false, bonus is 0

# Examples
  # 2800, true == 1400
  # 6000, false == 0
  # 50000, true == 25000

# Data structures
  # final result is an int - no need for arrays, hashes, etc.

# Algorithm
  # Method accepts arguments (int and bool)
  # Tests bool for false - if so, return 0
  # If true, return half of salary

# Code!

def calculate_bonus(salary, bonus)
  return 0 if bonus == false
  return salary / 2
end

# better solution
def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000