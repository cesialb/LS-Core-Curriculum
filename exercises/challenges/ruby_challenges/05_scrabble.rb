# frozen_string_literal: true

# Problem
# write a program that converts a word into its Scrabble score
# the tile scores are given

# Mental Model
# iterate through the word
# case statement to give the correct tile score
# keep adding to total score
# return total score

# Data Structure
# could use hash, but also could use case statement
# try hash out first

# Algorithm
# build Scrabble class, one attribute - the word itself
# one behavior - #score, which returns the tile score
# build hash for letters and their tile scores
# in #score, iterate through the word and add its corresponding tile score to total
# return

LETTERS = { 'A' => 1, 'E' => 1, 'I' => 1, 'O' => 1, 'U' => 1, 'N' => 1, 'R' => 1, 'S' => 1, 'T' => 1,
            'D' => 2, 'G' => 2,
            'B' => 3, 'C' => 3, 'M' => 3, 'P' => 3,
            'F' => 4, 'H' => 4, 'V' => 4, 'W' => 4, 'Y' => 4,
            'K' => 5,
            'J' => 8, 'X' => 8,
            'Q' => 10, 'Z' => 10 }.freeze

class Scrabble
  attr_reader :word
  attr_accessor :tile_score

  def initialize(word)
    @word = word
    @tile_score = 0
  end

  def self.score(word)
    Scrabble.new(word).score
  end

  def score
    return 0 if word.nil?

    word.upcase.each_char do |letter|
      self.tile_score += case letter
                         when 'A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'
                           1
                         when 'D', 'G'
                           2
                         when 'B', 'C', 'M', 'P'
                           3
                         when 'F', 'H', 'V', 'W', 'Y'
                           4
                         when 'K'
                           5
                         when 'J', 'X'
                           8
                         when 'Q', 'Z'
                           10
                         else
                           0
                         end
    end

    tile_score
  end
end
