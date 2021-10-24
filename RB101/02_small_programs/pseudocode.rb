# method that returns the sum of 2 integers
# casual pseudocode:
  # Prompt user for first number
  # Save number in variable
  # Prompt user for second number
  # Save number in variable
  # Return sum of both numbers
# formal pseudocode:
  # START
  # GET first number from user
  # SET number1 = user input
  # GET second number from user
  # SET number2 = user input
  # PRINT number1 + number2
  # END

# method that takes array of strings, returns a string that is all those concatenated together
# casual pseudocode:
  # Given an array of strings.
  # Create the variable that the concat'd string will be in.
  # Iterate through the string array, pushing each element to the empty variable.
  # Print the variable.
# formal pseudocde:
  # START
  # Given a collection of strings called "strings"
  # SET concat_string = nil
  # SET iterator = 1
  # WHILE iterator <= length of strings
    # Push value within strings collection at space "iterator" to concat_string
    # iterator = iterator + 1
  # PRINT concat_string
  # END  
  
# method that takes an array of integers, returns a new array with every other element
# casual pseudocode:
  # Given an array of integers.
  # Create the empty array that will hold every other element.
  # Iterate through the integer array, pushing every other value into the empty array.
  # Continue this until the entire integer array is gone through.
  # Print the new array.
# formal pseudocode:
  # START
  # Given a collection of integers called "numbers"
  # SET new_array = []
  # SET iterator = 1
  # WHILE iterator <= length of numbers
    # Push value within numbers collection at space "iterator" to new_array
    # iterator = iterator + 2
  # PRINT new_array
  # END

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
new_array = []

iterator = 0

while iterator < numbers.length
  new_array.push(numbers[iterator])
  iterator += 2
end

p new_array