# Problem:
  # Nothing technically incorrect about this class, but the definition could lead to problems
  # How can this class be fixed to be resistant to those problems?

# Examples:
  # None

# Data Structure:
  # Working within the Flight class

# Mental Model:
  # There doesn't seem to be a need to set the database handle to anything else after init
    # Removing the setter capability from @database_handle would be useful
  # There may not even be a need to read the database handle
    # Removing attr_accessor altogether would be useful

class Flight
  def initialize(flight_number)
    @database_handle = Database.init
    @flight_number = flight_number
  end
end