# frozen_string_literal: true

# Problem
# write a program that can tell if a number is perfect, abundant, or deficient
# perfect number: aliquot sum == original number
# abundant number: aliquot sum > original number
# deficient number: aliquot sum < original number

# aliquot sum = sum of the positive divisors, excluding the number itself
# prime numbers are always deficient (their only divisor is 1)

# Mental Model
# we need to build the aliquot sum - find divisors and return the sum of them
# then test to see if the AS >, ==, or < than the OG number

# Data Structure
# can hold the divisors in an array
# input should be an integer, output will be a string

# Algorithm
# create class PerfectNumber
# attribute for the number, initialized
# #classify behavior that returns a string
# in #classify, build the divisors array by going from 1 to one less than the number
# reduce the divisors array and test it against the OG number (case statement? if statement?)

class PerfectNumber
  def self.classify(number)
    raise StandardError.new if number.negative?
    divisors = []

    1.upto(number - 1) do |num|
      divisors << num if (number % num).zero?
    end

    aliquot_sum = divisors.reduce(:+)
    if aliquot_sum == number
      'perfect'
    elsif aliquot_sum > number
      'abundant'
    else 
      'deficient'
    end
  end
end
