# Problem:
  # What is wrong with the following code?
    # #to_s prints an expanded version of the string, not just the string
    # expand method shouldn't be private either
  # What fix(es) would you make?

class Expander
  def initialize(string)
    @string = string
  end

  def to_s
    self.expand(3)
  end
  
  private

  def expand(n)
    @string * n
  end
end

expander = Expander.new('xyz')
puts expander