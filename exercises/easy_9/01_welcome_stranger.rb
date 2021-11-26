# frozen_string_literal: true

# PEDAC Template
# ==============
# (Understand the) Problem
# ------------------------
# -  Inputs: array and a hash
# -  Output: printing output of a greeting
# ---
# **Problem Domain:**
# - Array will hold 2+ elements that will hold a person's name
# - Hash will hold 2 keys - :title and :occupation
# - Return a greeting using these elements and keys
#
# ---
# **Implicit Requirements:**
# - Array will always hold at least two elements
# - Hash will always hold :title and :occupation, and values for those
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
# - Input values are an array and a hash
# - Output value is printing output
# ---
# Algorithm
# ---------
# - Method accepts array and hash as arguments
# - Helper method - build string out of array elements
# - Helper method - build string out of hash elements
# - Return these two strings to parent method
# - Print output according to prompt
#
# Code
# ----

def build_name(arr)
  arr.join(' ')
end

def build_job(hash)
  "#{hash[:title]} #{hash[:occupation]}"
end

def greetings(arr, hash)
  name = build_name(arr)
  job = build_job(hash)

  puts "Hello, #{name}! Nice to have a #{job} around."
end

greetings(%w[John Q Doe], { title: 'Master', occupation: 'Plumber' })

# further exploration - split the logic into helper methods