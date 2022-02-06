# frozen_string_literal: true

# PEDAC Template
# ==============
# (Understand the) Problem
# ------------------------
# -  Inputs: string
# -  Output: true if all alphabetic characters in string are uppercse, false otherwise
# ---
# **Problem Domain:**
# - Returning true if every alphabetic character in the string is uppercase
# - Returning false in any other condition
# - Ignoring all non-alphabetic characters
# ---
# **Implicit Requirements:**
# - Empty strings will return true
# ---
# **Clarifying Questions:**
# 1. What is non-alphabetic?
#   - Any character that is not within A-Z or a-z is non-alphabetic
# 2.
# 3.
# ---
# **Mental Model:**
# ---
# Examples / Test Cases / Edge Cases
# ----------------------------------
# **Examples:**
# -  Example 1
#   -  Inputs: 't'
#   -  Output: false
# -  Example 2
#   -  Inputs: 'FOUR SCORE'
#   -  Output: true
# ---
# _Your Test Cases:_
# -  Example 3
#   -  Inputs: '4SCORE!'
#   -  Output: true (ignoring '!')
# ---
# _Your Edge Cases:_
# -  Example 4
#   -  Inputs:
#   -  Output:
# ---
# Data Structure
# --------------
# - Input value is a string
# - Output value is a boolean
# - An array will have to be used intermediately
#
# ---
# Algorithm
# ---------
# - Method passes in string as argument
# - If the string is empty, return true
# - Break string into an array of characters, begin iterating through them
#   - If the character is within [a-zA-Z], then test to see if it's equal to its uppercased
#     - If it's not, return false
#   - If the character is not within that alphabetic array, move to the next iteration
#     - Is this necessary?
#   - Continue iterating and checking
# - Leave true here as a fall-off return - if it made it through the false checks, then it's true
#
# Code
# ----

def uppercase?(str)
  return true if str.empty?

  str.chars.each do |char|
    next unless char =~ /[a-zA-z]/
    return false if char != char.upcase
  end
  true
end

# much easier solution
def uppercase?(str)
  str == str.upcase
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
