# Problem:
# Find the lowest & highest cards in an array of Card objects
# Numerics are low cards: 2-10
# 10 > Jacks > Queens > Kings
# Suit plays no role in ranking
# If you have 2+ cards of same rank, min and max methods should return one of the cards
# doesn't matter which
# Create a #to_s method that returns a String rep of the card ("Jack of Diamonds")

# Mental Model:
# Create to_s method to display the cards
# Create min method to find lowest ranking card
# Create max method to find highest ranking card

# Data Structure:
  # Array of Card objects
  # Card objects have two states for now

# Algorithm:
  # Create #to_s method for Card class
    # Iterate through array and access rank and suit for each object
      # puts "#{rank} of #{suit}"
  # Create min method to find lowest ranking card

class Card
  include Comparable
  attr_reader :suit, :rank, :value

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
    @value = compute_value
  end

  def to_s
    "#{rank} of #{suit}"
  end

  def compute_value
    case rank
    when 'Jack' then 11
    when 'Queen' then 12
    when 'King' then 13
    when 'Ace' then 14
    else rank
    end
  end

  def <=>(other)
    value <=> other.value
  end
end

cards = [Card.new(2, 'Hearts'),
        Card.new(10, 'Diamonds'),
        Card.new('Ace', 'Clubs')]
puts cards
puts cards.min == Card.new(2, 'Hearts')
puts cards.max == Card.new('Ace', 'Clubs')