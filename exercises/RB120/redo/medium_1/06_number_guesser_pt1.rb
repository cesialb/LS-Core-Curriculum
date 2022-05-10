# Problem:
# Created an OO number guessing class for numbers 1-100, inclusive
# 7 guesses per game
# Game randomizes the winning number
# Game lets us know how many guesses we have left
# If we get down to 0 guesses, we lose

# Mental Model:
# Create a class called GuessingGame
# States: number to guess, number of guesses left
# Behaviors: is the guess valid? is guess too high? is guess too low?

class GuessingGame
  NUMBER_OF_GUESSES = 7
  attr_accessor :guesses_left, :guess

  def initialize
    @guess = (1..100).to_a.sample
    @guesses_left = NUMBER_OF_GUESSES
  end

  def play
    loop do
      guess_status(guesses_left)
      user_guess = nil

      loop do
        display_request
        user_guess = gets.chomp.to_i
        break if valid_guess?(user_guess)
        display_invalid
      end

      if too_high?(user_guess)
        display_too_high
        decrement_guess
        if guesses_left == 0
          display_loss 
          break
        end
      elsif too_low?(user_guess)
        display_too_low
        decrement_guess
        if guesses_left == 0
          display_loss
          break
        end
      else
        display_win
        break
      end
    end
  end

  private

  def guess_status(num)
    puts "You have #{num} guesses remaining."
  end

  def display_request
    print "Enter a number between 1 and 100: "
  end

  def display_invalid
    print "Invalid guess.\n\n"
  end

  def valid_guess?(guess)
    guess >= 1 && guess <= 100
  end

  def too_high?(user_guess)
    user_guess > guess
  end

  def too_low?(user_guess)
    user_guess < guess
  end

  def display_too_high
    puts "Your guess is too high.\n\n"
  end

  def display_too_low
    puts "Your guess is too low.\n\n"
  end

  def decrement_guess
    self.guesses_left -= 1
  end

  def display_win
    puts "That's the number!\n\n"
    puts "You won!"
  end

  def display_loss
    puts "You have no more guesses. You lost!"
  end
end

game = GuessingGame.new
game.play
