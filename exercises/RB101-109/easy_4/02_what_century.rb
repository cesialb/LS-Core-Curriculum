# frozen_string_literal: true

# PEDAC Template
# ==============
# (Understand the) Problem
# ------------------------
# -  Inputs: year
# -  Output: the century that year is in
# ---
# **Problem Domain:**
# ---
# **Implicit Requirements:**
# ---
# 1. Return value should be a string
# 2. String should begin with the year, followed by st/nd/rd/th, as appropriate
# 3. Arguments will be integer only
#
# **Clarifying Questions:**
# 1. How do we define a century?
#     - New centuries begin in years that end in 01.
#     - Example: 1901-2000 is the 20th century
# 2.
# 3.
# ---
# **Mental Model:**
# ---
# Examples / Test Cases / Edge Cases
# ----------------------------------
# **Examples:**
# -  Example 1
#   -  Inputs: century(2000)
#   -  Output: '20th'
# -  Example 2
#   -  Inputs: century(1965)
#   -  Output: '20th'
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
# - Return value will be a string
#
# Algorithm
# ---------
# - Method accepts an integer as an argument
# - How to factor century from an integer?
#       - Found online: ((year-1) / 100) + 1
#       - Adding 1 is necessary because year 1 is considered the first century
# - Find century of that integer, using above algorithm
# - How to append suffix to found century?
#       - Found online:
#         st is used with numbers ending in 1 (e.g. 1st, pronounced first)
#         nd is used with numbers ending in 2 (e.g. 92nd, pronounced ninety-second)
#         rd is used with numbers ending in 3 (e.g. 33rd, pronounced thirty-third)
#         As an exception to the above rules, all the "teen" numbers ending with 11, 12 or 13 use -th)
#         th is used for all other numbers (e.g. 9th, pronounced ninth).
# Code
# ----

def century(year)
  century = ((year - 1) / 100) + 1

  var1 = century % 10
  var2 = century % 100

  return "#{century}st" if var1 == 1 && var2 != 11
  return "#{century}nd" if var1 == 2 && var2 != 12
  return "#{century}rd" if var1 == 3 && var2 != 13

  "#{century}th"
end

# better solution
def century(year)
  century = ((year - 1) / 100) + 1
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)

  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

p century(2000) #== '20th'
p century(2001) #== '21st'
p century(1965) #== '20th'
p century(256) #== '3rd'
p century(5) #== '1st'
p century(10_103) #== '102nd'
p century(1052) #== '11th'
p century(1127) #== '12th'
p century(11_201) #== '113th'
