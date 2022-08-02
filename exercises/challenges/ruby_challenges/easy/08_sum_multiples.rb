# Problem
# Given a natural number, and a set of one or more other numbers,
# find sum of all multiples of numbers in set
# that are less than the first number
# if set is not given, use default set of 3 and 5

# Mental Model
# have a number and a set of numbers
# add the multiples of the numbers in set that are less than 1st number

# Data Structure
# input - integer and (possibly more integers)
# output - integer

# Algorithm
# SumOfMultiples class
# initialize sets the natural number, possibly set1 and set2
# set the multiples to default 3 and 5 if nothing is given

# #to method that calculates the sum of multiples
# set sum to 0
# 0 to natural number - 1:
# sum += number if (natural % setnum1 == 0 || natural % setnum2 == 0)
# return sum

class SumOfMultiples
  attr_reader :multiples

  def initialize(*multiples)
    @multiples = (multiples.size > 0) ? multiples : [3, 5]
  end

  def to(number)
    sum = []
    multiples.each do |multiple|
      additive = multiple
      loop do
        if multiple < number
          sum << multiple 
          multiple += additive
        else
          break
        end
      end
    end
    sum.uniq.sum
  end

  def self.to(number)
    SumOfMultiples.new().to(number)
  end
end