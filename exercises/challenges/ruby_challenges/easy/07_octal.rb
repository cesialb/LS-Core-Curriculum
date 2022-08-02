# Problem
# implement octal to decimal conversion
# given an octal string, produce a decimal output
# treat invalid input as octal 0
# do not use any built-in library methods

# decimal is base-10
# 233 in base 10 notation can be understood as powers of 10
# right-most digit * 10^0 = 1
# next digit * 10^1 = 10
# digit after that * 10^2 = 100
# ...
# nth digit * 10^n-1 
# sum the values

# example
# 233
# 2*10^2 + 3*10^1 + 3*10^0

# octal numbers are similar, but they use a base-8 system
# example 233
# 2*8^2 + 3*8^1 + 3*8^0
# 2*64 + 3*8 + 3*1
# 155

# Mental Model
# find a way to convert decimal to octal
# input is a string, so it can be split from there
# total number of digits - 1 is what you start with
# keep subtracting until you hit -1
# multiplier = total digit size - 1
# first digit * 8^(multiplier) and add to accumulator
# subtract multiplier by 1
# once multiplier is less than 0, break the loop

# Data Structure
# input - string
# output - integer

# Algorithm
# accept string as argument
# TODO - validate input
# accumulator = 0
# multiplier = string.size - 1
# use each_char to go through string, accessing each digit
# accumulator += digit.to_i * 8^multiplier
# multiplier -= 1
# break when multiplier < 0
# accumulator

class Octal
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def to_decimal
    accumulator = 0
    multiplier = number.size - 1

    number.each_char do |digit|
      return 0 if !digit.match?(/[0-7]/)
      accumulator += digit.to_i * 8**multiplier
      multiplier -= 1
    end

    accumulator
  end
end

401-396-7633 option 1

p Octal.new('abc1z').to_decimal