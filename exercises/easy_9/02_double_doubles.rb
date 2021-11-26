# frozen_string_literal: true

# PEDAC Template
# ==============
# (Understand the) Problem
# ------------------------
# -  Inputs: integer
# -  Output: integer
# ---
# **Problem Domain:**
# - Double number: number with an even number of digits
#   - Left side digits are the same as the right side digits
#   - Ex. 103103, 7676, 44 are double numbers
#   - Ex. 444, 334433 are not double numbers
# - Prepare a method that returns 2x the number provided as the argument
#   - Except when the number is a double number, then it's returned as is
# ---
# **Implicit Requirements:**
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
#   -  Inputs: 37
#   -  Output: 74
# -  Example 2
#   -  Inputs: 334433
#   -  Output: 668866
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
# - Output value is an integer
#
# ---
# Algorithm
# ---------
# - Method accepts integer as argument
# - Integer is checked for double number qualification
#   - Even number of digits
#   - Left side is equal to right side
#   - Convert integer to string, slice in the middle, and check for equality
#     - IF equal, return integer as is
#     - ELSE, return integer * 2
#
# Code
# ----

def twice(num)
  str_num = num.to_s
  if str_num.length.even?
    split_idx = str_num.length / 2 - 1
    left = str_num[0..split_idx]
    right = str_num[split_idx + 1, str_num.length]
    if left == right
      num
    else
      num * 2
    end
  else
    num * 2
  end
end

# cleaner solution
def twice(number)
  string_number = number.to_s
  center = string_number.size / 2
  left_side = center.zero? ? '' : string_number[0..center - 1]
  right_side = string_number[center..-1]

  return number if left_side == right_side

  number * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334_433) == 668_866
p twice(444) == 888
p twice(107) == 214
p twice(103_103) == 103_103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
