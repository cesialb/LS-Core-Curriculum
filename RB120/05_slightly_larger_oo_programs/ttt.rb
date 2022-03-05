class Board
  WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                  [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                  [[1, 5, 9], [3, 5, 7]]              # diagonals

  def initialize
    @squares = {}
    reset
  end

  def []=(num, marker)
    @squares[num].marker = marker
  end

  def unmarked_keys
    @squares.keys.select { |key| @squares[key].unmarked? }
  end

  def full?
    unmarked_keys.empty?
  end

  def someone_won?
    !!winning_marker
  end

  def winning_marker
    WINNING_LINES.each do |line|
      squares = @squares.values_at(*line)
      if three_identical_markers?(squares)
        return squares.first.marker
      end
    end
    nil
  end

  def reset
    (1..9).each { |key| @squares[key] = Square.new }
  end

  # rubocop:disable Metrics/AbcSize
  # rubocop:disable Metrics/MethodLength
  def draw
    puts "     |     |"
    puts "  #{@squares[1]}  |  #{@squares[2]}  |  #{@squares[3]}"
    puts "     |     |"
    puts "-----+-----+-----"
    puts "     |     |"
    puts "  #{@squares[4]}  |  #{@squares[5]}  |  #{@squares[6]}"
    puts "     |     |"
    puts "-----+-----+-----"
    puts "     |     |"
    puts "  #{@squares[7]}  |  #{@squares[8]}  |  #{@squares[9]}"
    puts "     |     |"
  end
  # rubocop:enable Metrics/AbcSize
  # rubocop:enable Metrics/MethodLength

  private

  def three_identical_markers?(squares)
    markers = squares.select(&:marked?).collect(&:marker)
    return false if markers.size != 3
    markers.min == markers.max
  end
end

class Square
  INITIAL_MARKER = " "

  attr_accessor :marker

  def initialize(marker=INITIAL_MARKER)
    @marker = marker
  end

  def to_s
    @marker
  end

  def unmarked?
    marker == INITIAL_MARKER
  end

  def marked?
    marker != INITIAL_MARKER
  end
end

class Player
  attr_accessor :marker
  attr_accessor :score, :name

  def initialize(marker)
    @marker = marker
    @score = 0
    @name = ''
  end
end

class TTTGame
  COMPUTER_MARKER = "O"
  WINNING_POINT = 5

  attr_reader :board, :human, :computer
  attr_accessor :current_marker

  def initialize
    @board = Board.new
    @human = Player.new('')
    @computer = Player.new(COMPUTER_MARKER)
    @current_marker = ''
  end

  def play
    clear
    display_welcome_message
    choose_names
    pick_marker
    main_game
    display_winner
    display_goodbye_message
  end

  private

  def main_game
    loop do
      display_board
      player_move
      display_result
      break if game_winner?
      display_scoreboard
      break unless play_again?
      reset
      display_play_again_message
    end
  end

  def pick_marker
    custom_marker = nil
    loop do
      puts "Choose your marker (must be one character): "
      custom_marker = gets.chomp
      break if custom_marker.length == 1
      puts "Sorry. Marker must be one character.\n\n"
    end
    human.marker = custom_marker
    self.current_marker = custom_marker
    clear
  end

  def choose_names
    puts "Pick a name for yourself: "
    human.name = gets.chomp
    puts "Pick a name for the computer: "
    computer.name = gets.chomp
  end

  def player_move
    loop do
      current_player_moves
      break if board.someone_won? || board.full?
      clear_screen_and_display_board if human_turn?
    end
  end

  def display_welcome_message
    puts "Welcome to Tic Tac Toe! First to #{WINNING_POINT} wins!"
    puts ""
  end

  def display_goodbye_message
    puts "Thanks for playing Tic Tac Toe! Goodbye!"
  end

  def clear_screen_and_display_board
    clear
    display_board
  end

  def human_turn?
    @current_marker == human.marker
  end

  def display_board
    puts "You're a #{human.marker}. Computer is an #{computer.marker}."
    puts ""
    board.draw
    puts ""
  end

  def joinor(positions, delim=', ', word='or')
    case positions.size
    when 0 then ''
    when 1 then positions.first
    when 2 then " #{word} "
    else
      positions[-1] = "#{word} #{positions.last}"
      positions.join(delim)
    end
  end

  def human_moves
    puts "Choose a square (#{joinor(board.unmarked_keys)}): "
    square = nil
    loop do
      square = gets.chomp.to_i
      break if board.unmarked_keys.include?(square)
      puts "Sorry, that's not a valid choice."
    end

    board[square] = human.marker
  end

  def computer_moves
    board[board.unmarked_keys.sample] = computer.marker
  end

  def current_player_moves
    if human_turn?
      human_moves
      @current_marker = COMPUTER_MARKER
    else
      computer_moves
      @current_marker = human.marker
    end
  end

  def add_score(player, name)
    puts "#{name} won!"
    player.score += 1
  end

  def display_result
    clear_screen_and_display_board

    case board.winning_marker
    when human.marker
      add_score(human, "You")
    when computer.marker
      add_score(computer, "Computer")
    else
      puts "It's a tie!"
    end
  end

  def display_scoreboard
    puts "=============="
    puts "#{human.name}: #{human.score}"
    puts "#{computer.name}: #{computer.score}"
    puts "=============="
  end

  def game_winner?
    human.score == 5 || computer.score == 5
  end

  def display_winner
    puts "First to 5! You win the game!" if human.score == 5
    puts "First to 5! Computer wins the game!" if computer.score == 5
  end

  def play_again?
    answer = nil
    loop do
      puts "Would you like to play again? (y/n)"
      answer = gets.chomp.downcase
      break if %w(y n).include? answer
      puts "Sorry, must be y or n"
    end

    answer == 'y'
  end

  def clear
    system "clear"
  end

  def reset
    board.reset
    @current_marker = human.marker
    clear
  end

  def display_play_again_message
    puts "Let's play again!"
    puts ""
  end
end

game = TTTGame.new
game.play
