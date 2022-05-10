# Problem:
# Create class Poker that takes 5 cards from a Deck of Cards
# Evaluates those cards as a Poker hand
# Prints those Cards as well

# States - hand of 5 cards
# Behaviors - evaluating the hand, printing the hand

require 'pry'

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

class Deck
  RANKS = ((2..10).to_a + %w(Jack Queen King Ace)).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze

  attr_reader :deck

  def initialize
    reset
  end

  def draw
    reset if deck.size == 0
    deck.pop
  end

  private 

  def reset
    @deck = []
    SUITS.each do |suit|
      RANKS.each do |rank|
        @deck << Card.new(rank, suit)
      end
    end
    @deck.shuffle!
  end
end

# Include Card and Deck classes from the last two exercises.

class PokerHand
  attr_reader :cards, :rank_count

  def initialize(deck)
    @cards = []
    @rank_count = Hash.new(0)

    5.times do
      card = deck.draw
      @cards << card
      @rank_count[card.rank] += 1
    end
  end

  def print
    puts cards
    puts rank_count
  end

  def evaluate
    case
    when royal_flush?     then 'Royal flush'
    when straight_flush?  then 'Straight flush'
    when four_of_a_kind?  then 'Four of a kind'
    when full_house?      then 'Full house'
    when flush?           then 'Flush'
    when straight?        then 'Straight'
    when three_of_a_kind? then 'Three of a kind'
    when two_pair?        then 'Two pair'
    when pair?            then 'Pair'
    else                       'High card'
    end
  end

  private

  def royal_flush?
    straight_flush? && cards.min.rank == 10
  end

  def straight_flush?
    straight? && flush?
  end

  def four_of_a_kind?
  end

  def full_house?
  end

  def flush?
    suit = cards.first.suit
    cards.all? { |card| card.suit == suit }
  end

  def straight?
    return false if rank_count.any? { |_, count| count > 1 }

    cards.min.value == cards.max.value - 4
  end

  def three_of_a_kind?
  end

  def two_pair?
  end

  def pair?
  end
end

hand = PokerHand.new(Deck.new)
hand.print
#binding.pry
#puts hand.evaluate