# Problem
# We have a class called GuessingGame
# Holds a number b/w 1 and 100, inclusive - we have to guess that number
# We only have 7 guesses to do so
# The game lets us know if our guess is too high or too low
# The game checks if our guesses are outside of the 1-100 range
# The game lets us know when our guess is the correct number
# If we guess more than 7 times, we lose
# The game lets us know how many guesses we have left

# Mental Model:
# Create a class called GuessingGame
# States: number to guess, and the number of guesses left
# Behaviors: check validity of guess, if guess is too high, if guess is too low

class GuessingGame
  attr_reader :guess
  attr_accessor :number_of_guesses

  def initialize
    @guess = (1..100).to_a.sample
    @number_of_guesses = 7
  end

  def play
    loop do
      # guessing a number
      puts "You have #{number_of_guesses} guesses remaining."
      user_guess = nil
      loop do
        print "Enter a number between 1 and 100: "
        user_guess = gets.chomp.to_i
        break if valid_guess?(user_guess)
        print "Invalid guess. "  
      end

      # checking if the number is too high or too low, or the correct number
      if too_high?(user_guess)
        puts "Your guess is too high."
        puts ''
        self.number_of_guesses -= 1
        if number_of_guesses == 0
          loser
          break
        end
      elsif too_low?(user_guess)
        puts "Your guess is too low."
        puts ''
        self.number_of_guesses -= 1
        if number_of_guesses == 0
          loser
          break
        end
      else
        winner
        break
      end
    end
  end

  private

  def valid_guess?(value)
    value >= 0 && value <= 100
  end

  def too_high?(value)
    value > guess
  end

  def too_low?(value)
    value < guess
  end

  def winner
    puts "That's the number!"
    puts ""
    puts "You won!"
  end

  def loser
    puts "You have no more guesses. You lost!"
  end
end

game = GuessingGame.new
game.play

# You have 7 guesses remaining.
# Enter a number between 1 and 100: 104
# Invalid guess. Enter a number between 1 and 100: 50
# Your guess is too low.

# You have 6 guesses remaining.
# Enter a number between 1 and 100: 75
# Your guess is too low.

# You have 5 guesses remaining.
# Enter a number between 1 and 100: 85
# Your guess is too high.

# You have 4 guesses remaining.
# Enter a number between 1 and 100: 0
# Invalid guess. Enter a number between 1 and 100: 80

# You have 3 guesses remaining.
# Enter a number between 1 and 100: 81
# That's the number!

# You won!

# game.play

# You have 7 guesses remaining.
# Enter a number between 1 and 100: 50
# Your guess is too high.

# You have 6 guesses remaining.
# Enter a number between 1 and 100: 25
# Your guess is too low.

# You have 5 guesses remaining.
# Enter a number between 1 and 100: 37
# Your guess is too high.

# You have 4 guesses remaining.
# Enter a number between 1 and 100: 31
# Your guess is too low.

# You have 3 guesses remaining.
# Enter a number between 1 and 100: 34
# Your guess is too high.

# You have 2 guesses remaining.
# Enter a number between 1 and 100: 32
# Your guess is too low.

# You have 1 guesses remaining.
# Enter a number between 1 and 100: 32
# Your guess is too low.

# You have no more guesses. You lost!
