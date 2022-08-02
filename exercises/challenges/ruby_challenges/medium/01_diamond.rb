# Problem
# given a letter, output the letter in a diamond shape
# it prints the diamond starting with A
# supplied letter is at its widest point
# first row contains an A, last row contains an A
# all rows except for first & last have exactly two identical letters
# diamond is horizontally/vertically symmetric
# top half has letters in ascending order
# bottom half has letters in descending order

# Mental Model
# we need a class named Diamond
# need a class method named make_diamond, which accepts a letter
# diamond starts with A, with no spaces
# letter shifts to B, with one space
# letter shifts to C, with two spaces
# constantly checking to see if the current letter == arg letter
# if it is, then we begin descending down to A
# once A is reached, we stop

# Data Structure
# may be good to hold the alphabet in an array, to easily move through
# input arg is a string
# output is console output

# Algorithm
# class Diamond has no initialization

# #make_diamond
# create an empty string
# begin cycling through alphabet array
# set spaces to 0
# push letter + spaces + 

class Diamond
  def self.make_diamond(letter)
    range = ('A'..letter).to_a + ('A'...letter).to_a.reverse
    diamond_width = max_width(letter)

    range.each_with_object([]) do |let, arr|
      arr << make_row(let).center(diamond_width)
    end.join('\n') + '\n'
  end

  class << self
    private

    def make_row(letter)
      return "A" if letter == 'A'
      return "B B" if letter == 'B'

      letter + determine_spaces(letter) + letter
    end

    def determine_spaces(letter)
      all_letters = ['B']
      spaces = 1

      until all_letters.include?(letter)
        current_letter = all_letters.last
        all_letters << current_letter.next
        spaces += 2
      end

      ' ' * spaces
    end

    def max_width(letter)
      return 1 if letter == 'A'

      determine_spaces(letter).count(' ') + 2
    end
  end
end

Diamond.make_diamond('C')