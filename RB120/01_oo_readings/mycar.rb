module Offroadable
  def can_offroad?(horsepower)
    horsepower > 1000? true : false
  end
end

class Vehicle
  attr_accessor :color
  attr_reader :model, :year
  @@number_of_vehicles = 0

  def self.number_of_vehicles
    puts "This program has created #{@@number_of_vehicles} vehicles."
  end

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0
    @@number_of_vehicles += 1
  end

  def speed_up(number)
    @current_speed += number
    puts "Speeding up #{number} to #{@current_speed} mph."
  end

  def brake(number)
    @current_speed -= number
    puts "Slowing down #{number} to #{@current_speed} mph."
  end

  def current_speed
    puts "You are now going #{@current_speed} mph."
  end

  def shutdown
    @current_speed = 0
    puts "Parking!"
  end

  def self.calculate_mileage(gallons, miles)
    puts "#{miles/gallons} mpg"
  end

  def spray_paint(color)
    self.color = color
    puts "New #{color} paint job is great!"
  end

  def age
    t = Time.new(2022)
    puts "Your #{self.model} is #{years_old} years old."
  end

  private

  def years_old
    Time.now.year - self.year
  end
end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4

  def to_s
    "My car is a #{self.color} #{self.year} #{self.model}!"
  end
end

class MyTruck < Vehicle
  include Offroadable

  NUMBER_OF_DOORS = 2

  def to_s
    "My car is a #{self.color} #{self.year} #{self.model}!"
  end
end

saturn = MyCar.new(2001, 'Saturn L200', 'Blue')

saturn.speed_up(20)
saturn.current_speed
saturn.speed_up(20)
saturn.current_speed
saturn.brake(20)
saturn.current_speed
saturn.shutdown

MyCar.calculate_mileage(13, 351)

saturn.spray_paint('neon')

puts saturn.age

puts saturn

p Vehicle.ancestors
p MyCar.ancestors
p MyTruck.ancestors
