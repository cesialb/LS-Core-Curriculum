# frozen_string_literal: true

# PEDAC Template
# ==============
# (Understand the) Problem
# ------------------------
# -  Inputs: two integers
#   - first integer is a count
#   - second integer is the first number of a sequence the method will build
# -  Output: array containing the same number of elements as the count argument
#   - values of each element are multiples of the starting number
# ---
# **Problem Domain:**
# - Create a method that will take two integers as arguments
# - The first argument will be the number of elements the output array will have
# - The second argument is the first element
#   - The second argument is also what will be added to the existing element,
#     and assigned to the next element
# - Return this array
# ---
# **Implicit Requirements:**
# - If the first integer is 0, return an empty array
# - If the second integer is 0, the elements will all be 0
# ---
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
#   -  Inputs: (5, 1)
#   -  Output: [1, 2, 3, 4, 5]
# -  Example 2
#   -  Inputs: (4, -7)
#   -  Output: [-7, -14, -21, -28]
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
# - Input values are two integers
# - Output value is an array of integers
#
# ---
# Algorithm
# ---------
# - Method passes in two integers as arguments
# - Create empty array
# - If first_integer is 0, return the empty array
# - Create accumulator variable, set to 0
#
# - Begin looping, the number of times == first_integer
#   - accumulator += second_integer
#   - array << accumulator
# - Return array
#
# Code
# ----

def sequence(first_integer, second_integer)
  seq_arr = []
  return seq_arr if first_integer.zero?

  accumulator = 0
  first_integer.times do
    accumulator += second_integer
    seq_arr << accumulator
  end

  seq_arr
end

# slightly cleaner solution
def sequence(count, first)
  sequence = []
  number = first

  count.times do
    sequence << number
    number += first
  end

  sequence
end

# more idiomatic solution - more difficult to parse, however
def sequence(count, first)
  (1..count).map { |value| value * first }
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1_000_000) == []
