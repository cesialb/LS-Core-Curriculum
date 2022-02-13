# Problem: 
  # Refactor these classes so they have a common superclass
  # Inherit behavior as needed

# Rules:
  # Need a common superclass for these vehicles - what do they all have in common?
    # make, model are two attributes

# Mental Model:
  # Build a superclass that holds the make and model attributes for the subclasses
  # Refactor the initialize methods within each subclass, keep unique attributes as needed
  # to_s method can also be within the superclass

class Vehicle
  attr_reader :make, :model

  def initialize(make, model)
    @make = make
    @model = model
  end

  def to_s
    "#{make} #{model}"
  end
end

class Car < Vehicle
  def wheels
    4
  end
end

class Motorcycle < Vehicle
  def wheels
    2
  end
end

class Truck < Vehicle
  attr_reader :payload

  def initialize(make, model, payload)
    super(make, model)
    @payload = payload
  end

  def wheels
    6
  end
end