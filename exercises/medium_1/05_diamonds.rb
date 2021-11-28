# frozen_string_literal: true

# PEDAC Template
# ==============
# (Understand the) Problem
# ------------------------
# -  Inputs: odd positive integer (n)
# -  Output: output of 4-pointed diamond in an n x n grid
# ---
# **Problem Domain:**
# - Method takes in an odd integer
# - Create an n x n grid that will hold a 4-pointed diamond in it
# - Example: 3
#   '_*_'
#   '***'
#   '_*_'
# ---
# **Implicit Requirements:**
# - n will always be an odd positive integer
# ---
#
# **Clarifying Questions:**
# 1.
# 2.
# 3.
# ---
# **Mental Model:**
# ---
# Examples / Test Cases / Edge Cases
# ----------------------------------
# **Examples:**
# -  Example 1
#   -  Inputs: 9
#   -  Output:
#   '____*____'
#   '___***___'
#   '__*****__'
#   '_*******_'
#   '*********'
#   '_*******_'
#   '__*****__'
#   '___***___'
#   '____*____'
#
# -  Example 2
#   -  Inputs:
#   -  Output:
# ---
# _Your Test Cases:_
# -  Example 3
#   -  Inputs:
#   -  Output:
# ---
# _Your Edge Cases:_
# -  Example 4
#   -  Inputs:
#   -  Output:
# ---
# Data Structure
# --------------
# - Input value is an integer
# - Output value is display output
#
# ---
# Algorithm
# ---------
# - Method accepts odd integer as input - assume it will be one, no need to validate
# - Create spaces and stars variables, set to (n/2 - 1) and 1
# - Until stars >= n
#   - Print out line of spaces + stars + spaces
#     - Helper method
#   - Increment stars by 2, decrement spaces by 1
#   - This will be the first half of the diamond
#
# -
# Code
# ----

def build_line(stars, spaces)
  puts (' ' * spaces) + ('*' * stars) + (' ' * spaces)
end

def diamonds(n)
  spaces = (n / 2)
  stars = 1

  while stars < n
    build_line(stars, spaces)
    stars += 2
    spaces -= 1
  end

  build_line(stars, spaces)

  while stars > 1
    stars -= 2
    spaces += 1
    build_line(stars, spaces)
  end
end
 
diamonds(9)

# cleaner solution
def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
  stars = '*' * number_of_stars
  puts stars.center(grid_size)
end

def diamonds(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end

diamonds(9)

#further exploration - print just the outline of the diamond

def diamonds_fur_ex(num)

end

diamonds_fur_ex(5)