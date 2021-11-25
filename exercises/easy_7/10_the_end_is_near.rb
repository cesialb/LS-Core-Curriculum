# frozen_string_literal: true

# PEDAC Template
# ==============
# (Understand the) Problem
# ------------------------
# -  Inputs: string
# -  Output: the next to last word in the string
# ---
# **Problem Domain:**
# - Method accepts a string
# - Method will return the next to last word in the string
# - The method will always have at least two words
# ---
# **Implicit Requirements:**
# ---
# **Clarifying Questions:**
# 1. Mutating the original string in any way?
# 2. What are 'words' in this sense?
#   - Any sequence of non-blank characters
#   - So we're splitting the string by blank characters
# 3.
# ---
# **Mental Model:**
# ---
# Examples / Test Cases / Edge Cases
# ----------------------------------
# **Examples:**
# -  Example 1
#   -  Inputs: 'last word'
#   -  Output: 'last'
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
# - Output value is a string
# ---
# Algorithm
# ---------
# - Method accepts string as argument
# - Split string into an array of words, splitting by a ' '
# - Access the second-to-last element (index -2), and return it
#
# Code
# ----

def penultimate(str)
  str.split[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'

# further exploration - what if we're trying to get the middle word of a sentence?
# any edge cases?
# what if there isn't a middle word? even number of words?
# if there isn't a middle word, return the one before the midpoint

def return_middle_word(str)
  return '' if str.empty?

  words_arr = str.split
  middle_word_idx = words_arr.size / 2
  words_arr[middle_word_idx]
end

# cleaner solution
def middle(str)
  words = str.split
  if words.empty?
    ''
  elsif words.size.odd?
    words[words.size / 2]
  else
    words[(words.size / 2 - 1)..(words.size / 2)].join(' ')
  end
end

p return_middle_word('The end is near and I am humbled')
p return_middle_word('The end is near, wow!')
p return_middle_word('')
