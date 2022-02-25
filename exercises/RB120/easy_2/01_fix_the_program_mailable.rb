# Problem:
  # Correct the program so it will work properly
  # Assume Customer and Employee classes have complete implementations
  # Make smallest changes to ensure objects of both types have access to print_address

# Rules:
  # Both Customer and Employee classes need access to print_address method

# Mental Model:
  # #print_address is in Mailable module
  # To have access to it, include the module in each class

module Mailable
  def print_address
    puts "#{name}"
    puts "#{address}"
    puts "#{city}, #{state} #{zipcode}"
  end
end

class Customer
  include Mailable
  attr_reader :name, :address, :city, :state, :zipcode
end

class Employee
  include Mailable
  attr_reader :name, :address, :city, :state, :zipcode
end

betty = Customer.new 
bob = Employee.new
betty.print_address
bob.print_address