# Problem
# write program that takes a string of digits
# returns all possible consecutive number series of a specified length
# if the spec length > series itself, throw an error

# Mental Model
# use #each_cons to accomplish this
# returning a nested array of sliced integers
# split integer into array, then try #each_cons, with #slices arg as the arg

# Data Structure
# input - integer
# output - nested array of integers

class Series
  attr_reader :string

  def initialize(string)
    @string = string
  end

  def slices(width)
    raise ArgumentError if width > string.size

    arr = []
    string.chars.map(&:to_i).each_cons(width) { |slice| arr << slice }
    arr
  end
end
