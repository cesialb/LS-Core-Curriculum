# Problem:
  # Write a class that will display the desired output when the following code is run

# Mental Model:
  # Class will be named Transform
  # Initialize method will take one argument
  # There will be an uppercase and lowercase method
  # #uppercase must be readable
  # lowercase must be readable
  # The class itself must be able to call these methods

class Transform
  attr_reader :str
  
  def self.lowercase(str)
    str.downcase
  end

  def initialize(str)
    @str = str
  end

  def uppercase
    self.str.upcase
  end
end

my_data = Transform.new('abc')
puts my_data.uppercase
puts Transform.lowercase('XYZ')