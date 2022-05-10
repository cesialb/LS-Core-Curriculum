# Problem:
# Update solution from exercise #6 to accept a low and high value for guessing range
# Change number of guesses allowed 

# Mental Model:


class GuessingGame
  attr_accessor :guesses_left
  attr_reader :size_of_range, :guess, :range

  def initialize(low, high)
    @range = (low..high).to_a
    @guess = range.sample
    @size_of_range = range.size
    @guesses_left = Math.log2(size_of_range).to_i + 1
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
    print "Enter a number between #{range.min} and #{range.max}: "
  end

  def display_invalid
    print "Invalid guess.\n\n"
  end

  def valid_guess?(guess)
    guess >= range.min && guess <= range.max
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

game = GuessingGame.new(501, 1500)
game.play
