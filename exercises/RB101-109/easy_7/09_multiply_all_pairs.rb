# frozen_string_literal: true

# PEDAC Template
# ==============
# (Understand the) Problem
# ------------------------
# -  Inputs: two array arguments, always containing numbers
# -  Output: new array
#   - array holds the product of every pair of numbers that can be formed b/w the elements of the two arrays
#   - results should be sorted from low to high
# ---
# **Problem Domain:**
# - Method brings in two arrays of numbers
# - Create a new array holding the product of every pair of numbers possible b/w the elements
# - Sort the new array from low to high
# ---
# **Implicit Requirements:**
# ---
# **Clarifying Questions:**
# 1. Always one-dimensional arrays?
# 2.
# 3.
# ---
# **Mental Model:**
# ---
# Examples / Test Cases / Edge Cases
# ----------------------------------
# **Examples:**
# -  Example 1
#   -  Inputs: [2, 4], [4, 3, 1, 2]
#   -  Output: [2, 4, 4, 6, 8, 8, 12, 16]
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
# - Input values are two arrays
# - Output value is one array
#
# ---
# Algorithm
# ---------
# - Method accepts two arrays as arguments
# - Create new array
# - Iterate through array1, accessing each element
#   - Begin iterating through the other array, accessing each element
#     - Multiply array1 element by each element here, pushing the product to the new array
#   - Continue iterating through array1
# - Finish iterating
# - Return new array
#
# Code
# ----

def multiply_all_pairs(arr1, arr2)
  new_arr = []
  arr1.each do |ele|
    arr2.each do |arr2_ele|
      new_arr << (ele * arr2_ele)
    end
  end
  new_arr.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
