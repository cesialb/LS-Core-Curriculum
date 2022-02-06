# Process the problem
  # Expected inputs: a positive integer
  # Expected outputs: string of alternating 0s and 1s, starting with 1, 
  #                   the length being the integer argument
  # Rules: has to be a positive integer

# Examples
  # stringy(6) = '101010'
  # stringy(9) = '101010101'

# Data structure
  # Seems like a string would suffice - keep pushing 1 and 0 until the length is hit

# Algorithm
  # Method accepts argument - check if integer is positive - what to do if 0?
  # Integer is now length of final string
  # Create empty string and push 1 to it
  # If string length == integer stop here
  # If not, loop through and push 0, 1, 0, 1... to the string until string length == integer

# Code

def stringy(num)
  str = "1"
    return str if str.length == num
    
    loop do 
      str << "0"
      break if str.length == num

      str << "1"
      break if str.length == num
    end

  str
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'