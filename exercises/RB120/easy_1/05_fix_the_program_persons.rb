# Problem
  # Complete this program so it produces the expected output
# Examples
  # None
# Data Structure
  # Working within the Person class
# Mental Model
  # Says undefined method first_name= => no public setter method for @first_name
  # Added setter methods for both @first_name and @last_name
    # Custom setter methods needed to capitalize the argument passed in

class Person
  def initialize(first_name, last_name)
    @first_name = first_name.capitalize
    @last_name = last_name.capitalize
  end

  def to_s
    "#{@first_name} #{@last_name}"
  end

  def first_name=(first_name)
    @first_name = first_name.capitalize
  end

  def last_name=(last_name)
    @last_name = last_name.capitalize
  end
end

person = Person.new('john', 'doe')
puts person

person.first_name = 'jane'
person.last_name = 'smith'
puts person