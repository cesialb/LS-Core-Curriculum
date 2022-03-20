# Problem:
# Using Card class: create Deck class that has all 52 cards
# Deck#draw should deal one card
# Deck should be shuffled when initialized
# If deck runs out of cards, reset by generating 52 shuffled cards

# Mental Model:
# 

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

deck = Deck.new
drawn = []
52.times { drawn << deck.draw }
p drawn.count { |card| card.rank == 5 } == 4
p drawn.count { |card| card.suit == 'Hearts' } == 13

drawn2 = []
52.times { drawn2 << deck.draw }
p drawn != drawn2