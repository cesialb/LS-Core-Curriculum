# constants
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
MATCH_WIN = 3
WINNING_SCORE = 5
MIDDLE_SQUARE = 5
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +    # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +    # cols
                [[1, 5, 9], [3, 5, 7]]                 # diagonals

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You're an #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

# game creation
def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def initialize_score
  { 'Player' => 0, 'Computer' => 0 }
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(arr, delim=', ', joining_word='or')
  # str = ''
  # arr.each do |ele|
  #   str << if ele == arr.first
  #            "#{ele}#{delim}"
  #          elsif ele == arr.last
  #            "#{joining_word} #{ele}"
  #          else
  #            "#{ele}#{delim}"
  #          end
  # end
  # str

  # cleaner solution
  # solves the issue of the last element having an unnecessary delimiter
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{joining_word} ")
  else
    arr[-1] = "#{joining_word} #{arr.last}"
    arr.join(delim)
  end
end

def who_goes_first
  system 'clear'
  puts "Choose who goes first? Or let the computer decide? (y or n):"
  answer = gets.chomp

  if answer.downcase.start_with?('y')
    puts "Player decides!"
    puts "Choose who moves first, player or computer (P or C): "
    answer = gets.chomp
    if answer.downcase.start_with?('p')
      true
    else
      false
    end
  else
    [true, false].sample
  end
end

def place_piece!(brd, player)
  if player == 'Player'
    player_places_piece!(brd)
  else
    computer_places_piece!(brd)
  end
end

def alternate_player(player)
  if player == 'Player'
    'Computer'
  else
    'Player'
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square: #{joinor(empty_squares(brd))}"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt("Sorry, that's not a valid choice.")
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = nil

  WINNING_LINES.each do |line|
    square = find_winning_square(line, brd)
    break if square
  end

  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd)
      break if square
    end
  end

  square = MIDDLE_SQUARE if !square && middle_square_available?(brd)
  square = empty_squares(brd).sample if !square

  brd[square] = COMPUTER_MARKER
end

# computer move tactics
def find_at_risk_square(line, brd)
  if brd.values_at(*line).count(PLAYER_MARKER) == 2
    brd.select do |key, val|
      line.include?(key) && val == INITIAL_MARKER
    end.keys.first
  end
end

def find_winning_square(line, brd)
  if brd.values_at(*line).count(COMPUTER_MARKER) == 2
    brd.select do |key, val|
      line.include?(key) && val == INITIAL_MARKER
    end.keys.first
  end
end

def middle_square_available?(brd)
  brd[MIDDLE_SQUARE] == INITIAL_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

# endgame tactics
def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == MATCH_WIN
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == MATCH_WIN
      return 'Computer'
    end
  end
  nil
end

scores = initialize_score

loop do
  board = initialize_board

  current_player = if who_goes_first
                     'Player'

                   else
                     'Computer'

                   end
  loop do
    display_board(board)
    prompt "Player: #{scores['Player']}"
    prompt "Computer: #{scores['Computer']}"
    place_piece!(board, current_player)
    current_player = alternate_player(current_player)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board)

  # display match winner
  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
    if detect_winner(board) == 'Player'
      scores['Player'] += 1
    else
      scores['Computer'] += 1
    end
  else
    prompt "It's a tie!"
  end

  # display scores, final winner
  puts "======================="
  prompt "Player: #{scores['Player']}"
  prompt "Computer: #{scores['Computer']}"

  if scores['Player'] == WINNING_SCORE || scores['Computer'] == WINNING_SCORE
    prompt "Game Over! #{detect_winner(board)} wins!"
  end

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe! Good bye!"
