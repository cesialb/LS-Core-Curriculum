# Problem:
  # Modify House class so program will work

# Rules:
  # Define only one new method in House

# Mental Model:
  # There needs to be a way to define comparison methods in House

class House
  attr_reader :price
  include Comparable

  def initialize(price)
    @price = price
  end

  def <=>(other)
    self.price <=> other.price
  end
end

home1 = House.new(100_000)
home2 = House.new(150_000)
puts "Home 1 is cheaper" if home1 < home2
puts "Home 2 is more expensive" if home2 > home1

# Desired output:
  # Home 1 is cheaper
  # Home 2 is more expensive