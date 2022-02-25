# Problem:
  # Modify the code so that the following code works.

# Rules:
  # Allowed to write one new method to fix this

# Mental Model:
  # Person class
    # Initialize method passes in one argument
    # #walk method is public
  # Cat class
    # Initialize method passes in one argument
    # #walk method is public
  # Cheetah class
    # Initialize method passes in one argument
    # #walk method is public

  # All three classes share the ability to walk - Walkable module
    # Define #walk here and include Walkable in each class

module Walkable
  def walk
    "#{@name} #{gait} forward"
  end
end

class Person
  include Walkable
  attr_reader :name

  def initialize(name)
    @name = name
  end

  private

  def gait
    "strolls"
  end
end

class Cat
  include Walkable
  attr_reader :name

  def initialize(name)
    @name = name
  end

  private

  def gait
    "saunters"
  end
end

class Cheetah
  include Walkable
  attr_reader :name

  def initialize(name)
    @name = name
  end

  private

  def gait
    "runs"
  end
end

mike = Person.new("Mike")
puts mike.walk
# => "Mike strolls forward"

kitty = Cat.new("Kitty")
puts kitty.walk
# => "Kitty saunters forward"

flash = Cheetah.new("Flash")
puts flash.walk
# => "Flash runs forward"