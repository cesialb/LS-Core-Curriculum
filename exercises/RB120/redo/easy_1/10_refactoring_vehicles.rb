class Vehicle
  def initialize(make, model)
    @make = make
    @model = model
  end
end

class Car < Vehicle
  attr_reader :make, :model

  def wheels
    4
  end
end

class Motorcycle < Vehicle
  attr_reader :make, :model

  def wheels
    2
  end
end

class Truck < Vehicle
  attr_reader :make, :model, :payload

  def initialize(make, model, payload)
    super(make, model)
    @payload = payload
  end

  def wheels
    6
  end
end