# frozen_string_literal: true

# Problem
# write a program to determine if a triangle is equilateral, isoceles, or scalene
# equilateral - all three sides same length
# isosceles - two sides same, one different
# scalene - all three different size length
# triangle criteria
# all sides greater length than 0
# sum of any two sides has to be greater than length of third side

# Mental Model - looking at test cases
# build a triangle class that has 3 attributes for each side of the triangle, and for what kind of triangle
# some behaviors?
# testing to see if all three sides are equal
# testing to see if just two sides are equal
# testing to see if no sides are equal
# testing to see if it's a valid triangle
# all sides > 0
# any two sides > third side - how to do this?

# Data Structure
# Triangle class
# attributes for each side, and an attribute for the kind of triangle it is
# some behaviors to check type of triangle and validity of triangle

# Algorithm
# to check for equilateral:
# call #uniq and see if the count is 1

# to check for isosceles:
# call #uniq and see if the count is 2

# to check for scalene:
# call #uniq and see if the count is 3

# to check if all sides are at least greater than 0:
# call #all? and pass in a block to test conditional

# to check if any two sides > third side:
# brute force it

# builds a triangle
class Triangle
  attr_reader :kind

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    raise ArgumentError, 'invalid triangle' unless valid?

    find_type
  end

  def find_type
    self.kind = if equilateral?
                  'equilateral'
                elsif isoceles?
                  'isosceles'
                else
                  'scalene'
                end
  end

  def display_kind
    puts "This triangle is #{kind}."
  end

  private

  attr_writer :kind

  def equilateral?
    [@side1, @side2, @side3].uniq.count == 1
  end

  def isoceles?
    [@side1, @side2, @side3].uniq.count == 2
  end

  def valid?
    all_sides_greater_than_zero? && two_sides_greater?
  end

  def all_sides_greater_than_zero?
    [@side1, @side2, @side3].all?(&:positive?)
  end

  def two_sides_greater?
    (@side1 + @side2) > @side3 &&
      (@side1 + @side3) > @side2 &&
      (@side2 + @side3) > @side1
  end
end
