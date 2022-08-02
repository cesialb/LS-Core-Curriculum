# Problem
# write code that converts modern numbers into their Roman number equivalent
# definition: expressing each digit separately, starting with left most digit
# also skipping any digit with a value of zero

# no need to convert numbers higher than 3000

# Mental Model
# create a Roman numeral class
# initialized with a modern number
# has a #to_roman behavior
# using modulo operator to 

NUMERALS = { 'M' => 1000, 'CM' => 900, 'D' => 500, 'CD' => 400, 'C' => 100, 
               'XC' => 90, 'L' => 50, 'XL' => 40, 'X' => 10, 'IX' => 9, 'V' => 5, 
               'IV' => 4, 'I' => 1 }

class RomanNumeral
  attr_accessor :number

  def initialize(number)
    @number = number
  end

  def to_roman
    result = ''
    to_convert = number

    NUMERALS.each do |key, value|
      multiplier, remainder = @number.divmod(value)
      if multiplier > 0
        result += (key * multiplier)
      end
      @number = remainder
    end
    
    result
  end
end