# frozen_string_literal: true

# PEDAC Template
# ==============
# (Understand the) Problem
# ------------------------
# -  Inputs: two numbers - starting number and the ending number
# -  Output: print out all numbers between the two, with some caveats:
#   - if a number is divisble by 3 - print "Fizz"
#   - if a number is divisible by 5 - print "Buzz"
#   - if a number is divisible by both 3 and 5 - print "Fizzbuzz"
# ---
# **Problem Domain:**
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
#   -  Inputs:
#   -  Output:
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
# - Input values are two numbers
# - Output values is output printing
# ---
# Algorithm
# ---------
# - Method accepts two numbers as arguments
# - Create array
# - From starting_number to ending_number, iterate (num)
#     - if num is divisible by 3 and 5, push "Fizzbuzz" to array, and move to next iteration
#     - else if num is divisible by 3, push "Fizz" to array
#     - else if num is divislbe by 5, push "Buzz" to array
# - Join array via commas, return
#
# Code
# ----

def fizzbuzz(starting, ending)
  arr = []
  starting.upto(ending) do |num|
    arr << if (num % 3).zero? && (num % 5).zero?
             'Fizzbuzz'
           elsif (num % 3).zero?
             'Fizz'
           elsif (num % 5).zero?
             'Buzz'
           else
             num
           end
  end
  arr.join(', ')
end

p fizzbuzz(1, 15)
