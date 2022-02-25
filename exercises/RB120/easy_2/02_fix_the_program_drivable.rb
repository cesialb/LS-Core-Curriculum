# Problem:
  # Correct program so Car instances have access to the #drive method

# Rules:
  # Car instances need access to #drive

# Mental Model:
  # #drive is in Drivable module, so that needs to be included in Car

module Drivable
  def drive
  end
end

class Car
  include Drivable
end

bobs_car = Car.new
bobs_car.drive