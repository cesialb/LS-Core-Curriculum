# frozen_string_literal: true

# PEDAC Template
# ==============
# (Understand the) Problem
# ------------------------
# -  Inputs: string
# -  Output: array that contains every word from the string
#   - within the array, also have a space after every word, and have the word length after
# ---
# **Problem Domain:**
# - Words in the string will always be separated by one space
# - Any substring of non-space characters is a "word" here
# - Create an array where each element is the split word, a space, and its word length
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
#   -  Inputs: ("cow sheep chicken")
#   -  Output: ["cow 3", "sheep 5", "chicken 7"]
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
# - Input value is a string
# - Output value is an array of strings
#
# ---
# Algorithm
# ---------
# - Method passes in string as argument
# - Split string into an array of "words" (the number of elements will be the number of words)
# - Iterate through words array, accessing each element
#   - With each element:
#     - return the element, a space, and its word length to replace the existing element
# - Return this array
#
# Code
# ----

def word_lengths(str)
  str.split.map { |word| "#{word} #{word.length}" }
end

p word_lengths('cow sheep chicken') == ['cow 3', 'sheep 5', 'chicken 7']

p word_lengths('baseball hot dogs and apple pie') ==
  ['baseball 8', 'hot 3', 'dogs 4', 'and 3', 'apple 5', 'pie 3']

p word_lengths("It ain't easy, is it?") == ['It 2', "ain't 5", 'easy, 5', 'is 2', 'it? 3']

p word_lengths('Supercalifragilisticexpialidocious') ==
  ['Supercalifragilisticexpialidocious 34']

p word_lengths('') == []
