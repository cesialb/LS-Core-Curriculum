# Problem:
  # Ben and Alyssa working on a vehicle management system
  # Two classes so far: Auto and Motorcycle
  # Noticing common info/calculations, a WheeledVehicle class was created
  # Alan asks: new vehicle, Catamaran
  # Catamaran has no tires, but we still want to track fuel efficiency and range
  # Modify class definitions and move code into a module as necessary

# Mental Model:
  # Catamaran and the wheeled vehicles do share fuel efficiency and range
    # These can go into a module
  # Wheeled vehicles also have tire pressures in a tire array
    # This can be passed down from WheeledVehicle into the respective classes

# Algorithm:
  # Create module for Catamaran and the wheeled vehicles: fuel effiency and range
  # Remove fuel efficiency and range attributes/methods from WV, etc. classes

module Fuelable
  attr_accessor :speed, :heading

  def range(fuel_capacity, fuel_efficiency)
    @fuel_capacity * @fuel_efficiency
  end
end

class WheeledVehicle
  include Fuelable

  def initialize(tire_array, km_traveled_per_liter, liters_of_fuel_capacity)
    @tires = tire_array
    self.fuel_efficiency = km_traveled_per_liter
    self.fuel_capacity = liters_of_fuel_capacity
  end

  def tire_pressure(tire_index)
    @tires[tire_index]
  end

  def inflate_tire(tire_index, pressure)
    @tires[tire_index] = pressure
  end
end

class Auto < WheeledVehicle
  def initialize
    # 4 tires are various tire pressures
    super([30,30,32,32], 50, 25.0)
  end
end

class Motorcycle < WheeledVehicle
  def initialize
    # 2 tires are various tire pressures
    super([20,20], 80, 8.0)
  end
end

class Catamaran
  include Fuelable
  attr_reader :propeller_count, :hull_count

  def initialize(num_propellers, num_hulls, km_traveled_per_liter, liters_of_fuel_capacity)
    self.fuel_capacity = liters_of_fuel_capacity
    self.fuel_efficiency = km_traveled_per_liter
  end
end