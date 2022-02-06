class Person
  attr_accessor :first_name, :last_name

  # def initialize(first_name, last_name='')
  #   @first_name = first_name
  #   @last_name = last_name
  # end

  # better initalize method
  def initialize(full_name)
    parts = full_name.split
    @first_name = parts.first
    @last_name = parts.size > 1 ? parts.last : ''
  end

  def name
    @first_name + ' ' + @last_name
  end
end

bob = Person.new('Robert')
bob.name
p bob.first_name
p bob.last_name
bob.last_name = 'Smith'
p bob.name