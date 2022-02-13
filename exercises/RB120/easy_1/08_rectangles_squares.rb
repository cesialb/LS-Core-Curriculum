# Problem:
  # Given the following class:
  # Write a class called Square that inherits from Rectangle

# Rules:
  # Square must inherit from Rectangle
  # Square must pass in an argument for its sides
  # Square must override the initialize and area methods from Rectangle

# Mental Model:
  # Create Square class
  # Since it has one argument for initialize, it needs to override the Rectangle one
  # Square also needs to override the Rectangle's #area method

class Rectangle
  def initialize(height, width)
    @height = height
    @width = width
  end

  def area
    @height * @width
  end
end

class Square < Rectangle
  def initialize(side)
    super(side, side)
  end
end

square = Square.new(5)
puts "area of square = #{square.area}"