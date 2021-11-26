# frozen_string_literal: true

# PEDAC Template
# ==============
# (Understand the) Problem
# ------------------------
# -  Inputs: an array of words
# -  Output: printing words that are anagrams
#   - Output should be arrays of the anagrams
# ---
# **Problem Domain:**
# - Anagram - words that have the same letters in them, but in different order
#   Ex. demo, dome, mode
#
# ---
# **Implicit Requirements:**
# - Not returning anything, just printing out
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
#   -  Output: ['demo', 'dome', 'mode']
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
# - Input value is words array
# - Output value will be printing output of anagram arrays
#
# ---
# Algorithm
# ---------
# - Method accepts array of strings as argument
# - Iterate through array, accessing each element
#   - If a sorted element in the array is the same as the sorted iterating element
#   - Push to an array
#   - if not, move to the next element in the array and print the anagram_array
#
# Code
# ----

words = %w[demo none tied evil dome mode live
           fowl veil wolf diet vile edit tide
           flow neon]

WORDS = %w[demo none tied evil dome mode live
           fowl veil wolf diet vile edit tide
           flow neon].freeze

final_arr = []

words.each do |word|
  arr = []
  WORDS.each do |compare_word|
    arr << compare_word if word.chars.sort == compare_word.chars.sort
  end
  final_arr << arr
end

final_arr.uniq.each do |arr|
  puts '--------'
  p arr
end
