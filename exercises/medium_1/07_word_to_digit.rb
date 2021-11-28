

# PEDAC Template
# ==============
# (Understand the) Problem
# ------------------------
# -  Inputs: sentence string
# -  Output: same string with any sequence of number-as-words ('zero', 'one', etc..)
#            converted to a string of digits
# ---
# **Problem Domain:**
# - Build a method that will replace number-words with their corresponding numbers.
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
#   -  Inputs: 'Please call me at five five five one two three four. Thanks.'
#   -  Output: 'Please call me at 5 5 5 1 2 3 4. Thanks.'
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
# - Output value is the same string
# - Will need a hash to hold number-word as keys, and number as values
# ---
# Algorithm
# ---------
# - Method passes in string as argument
# - Split string with spaces as the delimiter, creating an array of strings
# - Build hash to hold string number-words as keys, and string numbers as values
# - Iterate through the string array, accessing each element
#   - Use gsub here to replace any number-words with matched key-values from the hash
# - Return the string
#
# Code
# ----

def word_to_digit(string)
  number_hash = { 'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
                  'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9' }

  string.split(/\.?\s+/).each do |word|
    number_hash.each do |key, _value|
      string.gsub!(/\b#{word}\b/, number_hash) if word == key
    end
  end
  string
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'
