# frozen_string_literal: true

# PEDAC Template
# ==============
# (Understand the) Problem
# ------------------------
# -  Inputs: non-empty string
# -  Output: middle character(s) of argument
# ---
# **Problem Domain:**
# - If the argument has an odd length, return the middle character
# - If the argument has an even length, return exactly two characters in the middle
#
# ---
# **Implicit Requirements:**
# ---
# **Clarifying Questions:**
# 1. Non-empty string?
#   - Will have at least one character?
# 2. Can I return nothing if the middle character is whitespace?
#   - Yes
# 3.
# ---
# **Mental Model:**
# ---
# Examples / Test Cases / Edge Cases
# ----------------------------------
# **Examples:**
# -  Example 1
#   -  Inputs: 'I love ruby'
#   -  Output: 'e'
# -  Example 2
#   -  Inputs: 'Launch School'
#   -  Output: ' '
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
# - Input value is a string
# - Output value is a string
#
# ---
# Algorithm
# ---------
# - Method accepts string as argument
# - Break string into an array of characters
# - Iterate through array
#   - If size of array is odd:
#     - Return element at index array.size/2
#   - If size of array is even:
#     - Return elements at index array.size/2 and index array.size/2-1
#
# Code
# ----

def center_of(str)
  center = ''
  center << if str.length.odd?
              str[str.length / 2]
            else
              str[str.length / 2 - 1] + str[str.length / 2]
            end
  center
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
