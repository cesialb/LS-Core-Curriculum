class Cat
  def initialize(name)
    @name = name
    puts "Hello! My name is #{@name}!"
  end
end

kitty = Cat.new('Sophie')

# Instance variables are variables that exist only within an object instance
# Available to reference only after the object has been initialized
  # Looks like this: @name
