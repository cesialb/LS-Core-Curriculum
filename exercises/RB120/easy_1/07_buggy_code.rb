# Problem:
  # Fix the following code so it works properly

# Examples:
  # None

# Data Structure:
  # Working within the class Car

# Algorithm:
  # Local variable is created in increment_mileage method
    # There needs to be reassignment of the instance variable

class Car
  attr_accessor :mileage

  def initialize
    @mileage = 0
  end

  def increment_mileage(miles)
    total = mileage + miles
    self.mileage = total
  end

  def print_mileage
    puts mileage
  end
end

car = Car.new
car.mileage = 5000
car.increment_mileage(678)
car.print_mileage  # should print 5678