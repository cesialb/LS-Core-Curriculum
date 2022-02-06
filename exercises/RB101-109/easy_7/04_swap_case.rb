# frozen_string_literal: true

# PEDAC Template
# ==============
# (Understand the) Problem
# ------------------------
# -  Inputs: string
# -  Output: new string where every uppercase letter is now lowercase, and vice-versa
#     - all other characters should be unchanged
# ---
# **Problem Domain:**
# - Build a new string that swaps lowercase letters with uppercase, uppercase with lowercase,
#   and leaves all other characters unchanged.
# - Do not use String#swapcase
# ---
# **Implicit Requirements:**
# - Symbols, non-alphabetic characters are among the unchanged
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
#   -  Inputs: 'CamelCase'
#   -  Output: 'cAMELcASE'
# -  Example 2
#   -  Inputs: 'Tonight on XYZ-TV'
#   -  Output: 'tONIGHT ON xyz-tv'
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
# - Output value is a new string
#
# ---
# Algorithm
# ---------
# - Method accepts string as argument
# - Create new string
# - Create array of uppercase letters, then an array of lowercase letters
# - Split string into an array of characters, and iterate through the array
# - Access every character and see if it's found in the lowercase array
#   - If it is, upcase the character and push to the new string
#   - If it isn't, see if it's in the uppercase array anywhere
#     - If it is, downcase the character and push to the new string
#   - If it's in neither, push the character as is
# - Return the new string
#
# Code
# ----

UPPERCASE_CHARS = ('A'..'Z').to_a
LOWERCASE_CHARS = ('a'..'z').to_a

def swapcase(str)
  new_str = ''
  str.chars.each do |letter|
    new_str << if UPPERCASE_CHARS.include?(letter)
                 letter.downcase
               elsif LOWERCASE_CHARS.include?(letter)
                 letter.upcase
               else
                 letter
               end
  end
  new_str
end

# using regex
def swapcase(string)
  characters = string.chars.map do |char|
    case char
    when /[a-z]/
      char.upcase
    when /[A-Z]/
      char.downcase
    else
      char
    end
  end
  characters.join
end
p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
