=begin
  Rules of Twenty-One:
  1. Start with a normal 52-card deck (4 suits, 13 values)
  2. Goal: get as close to 21 as possible, without going over
    2a. If you go over, it's a "bust" and you lose
  3. Setup: you have a dealer and a player
    3a. Both players are given 2 cards initially
    3b. Player can see their 2, but only 1 of the dealer's
  4. Card values:
    4a. 2-10 worth their face value
    4a. J, Q, and K are worth 10
    4b. Ace can be 1 or 11
      - Determined each time a new card is drawn from the deck
      Ex. Hand has 2, ace, and 5 => total value of hand is 18
        - Ace is 11 because (2 + 11 + 5) doesn't go over 21
        - What if another card is drawn?
          - Ace will be 1, because (2 + 11 + 5 + 1) doesn't go over 21
  5. Player's turn:
    - Player goes first - decide to hit or stay
    - Turn is over when player busts or stays
      - If bust, game is over and dealer wins
  6. Dealer's turn:
    - Dealer follows strict rule: hit until total is at least 17
    - If dealer busts, player wins
  7. Comparing:
    - When both player and dealer stay, it's time to compare values

  Pseudocode:
  1. Initialize deck
  2. Deal cards to player and dealer
  3. Player turn: hit or stay
    - Repeat until bust or stay
  4. If player busts, dealer wins
  5. Dealer turn: hit or stay
    - Repeat until total >= 17
  6. If dealer busts, player wins
  7. Compare cards and declare winner
=end

require 'humanize' # to convert GAME constant to the corresponding word

# constants
SUITS = ['H', 'D', 'S', 'C']
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
GAME_WIN = 5
GAME = 21
DEALER_STOP = 17

def prompt(msg)
  puts "=> #{msg}"
end

def greeting
  system 'clear'
  prompt "Welcome to #{GAME.humanize.capitalize}! First to #{GAME_WIN} wins!"
  puts "Loading..."
  sleep(3)
end

# game creation
def initialize_deck
  SUITS.product(VALUES).shuffle
end

def total(cards)
  # cards = [['H', '3'], ['S', 'Q'], ... ]
  values = cards.map { |card| card[1] }

  sum = 0
  values.each do |value|
    sum += if value == "A"
             11
           elsif value.to_i == 0 # J, Q, K
             10
           else
             value.to_i
           end
  end

  # correct for aces
  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > GAME
  end

  sum
end

# endgame methods
def busted?(total)
  total > GAME
end

def detect_result(player_total, dealer_total)
  if player_total > GAME
    :player_busted
  elsif dealer_total > GAME
    :dealer_busted
  elsif dealer_total < player_total
    :player
  elsif dealer_total > player_total
    :dealer
  else
    :tie
  end
end

def display_result(player_total, dealer_total, scores)
  result = detect_result(player_total, dealer_total)

  case result
  when :player_busted
    scores['Dealer'] += 1
    prompt "You busted! Dealer wins!"
  when :dealer_busted
    scores['Player'] += 1
    prompt "Dealer busted! You win!"
  when :player
    scores['Player'] += 1
    prompt "You win!"
  when :dealer
    scores['Dealer'] += 1
    prompt "Dealer wins!"
  when :tie
    prompt "It's a tie!"
  end
end

def end_of_round(player_cards, dealer_cards, player_total, dealer_total)
  puts "=============="
  prompt "Dealer has #{dealer_cards}, for a total of: #{dealer_total}"
  prompt "Player has #{player_cards}, for a total of: #{player_total}"
  puts "=============="
end

def display_scoreboard(scores)
  puts " -----------------------"
  puts "|       Player: #{scores['Player']}       |"
  puts "|       Dealer: #{scores['Dealer']}       |"
  puts " -----------------------"
end

def winner?(scores)
  if scores['Player'] == GAME_WIN || scores['Dealer'] == GAME_WIN
    winner = scores['Player'] > scores['Dealer'] ? 'Player' : 'Dealer'
    prompt "Game Over! #{winner} wins!"
    scores['Player'] = 0
    scores['Dealer'] = 0
  end
end

def play_again?
  prompt "Do you want to play again? (y or n)"
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

# program begins
greeting
scores = { 'Player' => 0, 'Dealer' => 0 }

loop do
  deck = initialize_deck
  player_cards = []
  dealer_cards = []
  system 'clear'

  # initial deal to both players
  2.times do
    player_cards << deck.pop
    dealer_cards << deck.pop
  end

  # caching total numbers for player and dealer
  player_total = total(player_cards)
  dealer_total = total(dealer_cards)

  prompt "Dealer has #{dealer_cards[0]} and ?"
  prompt "You have: #{player_cards[0]} and #{player_cards[1]}, for a total of #{player_total}."

  # player turn
  loop do
    player_turn = nil
    loop do
      prompt "Would you like to (h)it or (s)tay?"
      player_turn = gets.chomp.downcase
      break if ['h', 's'].include?(player_turn)
      prompt "Sorry, must enter 'h' or 's'."
    end

    if player_turn == 'h'
      player_cards << deck.pop
      player_total = total(player_cards)
      prompt "You chose to hit!"
      prompt "Your cards are now: #{player_cards}"
      prompt "Your total is now: #{player_total}"
    end

    break if player_turn == 's' || busted?(player_total)
  end

  # checking if player has busted
  if busted?(player_total)
    end_of_round(player_cards, dealer_cards, player_total, dealer_total)
    display_result(player_total, dealer_total, scores)
    display_scoreboard(scores)
    winner?(scores)
    play_again? ? next : break
  else
    prompt "You stayed at #{player_total}"
  end

  # dealer turn
  prompt "Dealer turn..."

  loop do
    break if dealer_total >= DEALER_STOP
    prompt "Dealer hits!"
    dealer_cards << deck.pop
    dealer_total = total(dealer_cards)
    prompt "Dealer's cards are now: #{dealer_cards}"
    puts "=============="
  end

  # checking if dealer has busted
  if busted?(dealer_total)
    prompt "Dealer total is now: #{dealer_total}"
    end_of_round(player_cards, dealer_cards, player_total, dealer_total)
    display_result(player_total, dealer_total, scores)
    display_scoreboard(scores)
    winner?(scores)
    play_again? ? next : break
  else
    prompt "Dealer stays at #{dealer_total}"
  end

  # both player and dealer stay - compare cards
  end_of_round(player_cards, dealer_cards, player_total, dealer_total)
  display_result(player_total, dealer_total, scores)
  display_scoreboard(scores)
  winner?(scores)
  break unless play_again?
end

prompt "Thank you for playing #{GAME.humanize.capitalize}! Good bye!"
