class Move
  attr_reader :value

  VALUES = ['rock', 'paper', 'scissors', 'lizard', 'spock']

  def initialize(value)
    @value = value
  end

  def ==(other_move)
    self.class == other_move.class
  end

  def to_s
    @value
  end
end

class Rock < Move
  def initialize
    @value = 'rock'
  end

  def >(other_move)
    other_move.class == Scissors || other_move.class == Lizard
  end

  def <(other_move)
    other_move.class == Spock || other_move.class == Paper
  end
end

class Paper < Move
  def initialize
    @value = 'paper'
  end

  def >(other_move)
    other_move.class == Rock || other_move.class == Spock
  end

  def <(other_move)
    other_move.class == Scissors || other_move.class == Lizard
  end
end

class Scissors < Move
  def initialize
    @value = 'scissors'
  end

  def >(other_move)
    other_move.class == Paper || other_move.class == Lizard
  end

  def <(other_move)
    other_move.class == Rock || other_move.class == Spock
  end
end

class Lizard < Move
  def initialize
    @value = 'lizard'
  end

  def >(other_move)
    other_move.class == Paper || other_move.class == Spock
  end

  def <(other_move)
    other_move.class == Rock || other_move.class == Scissors
  end
end

class Spock < Move
  def initialize
    @value = 'spock'
  end

  def >(other_move)
    other_move.class == Rock || other_move.class == Scissors
  end

  def <(other_move)
    other_move.class == Lizard || other_move.class == Paper
  end
end

class History
  attr_accessor :moves

  def initialize
    @moves = []
  end

  def to_s
    "History: #{@moves}"
  end
end

class Player
  WINNING_SCORE = 10
  attr_accessor :move, :name, :score

  def initialize
    @score = 0
    set_name
  end

  def make_move(choice)
    return Rock.new if choice == 'rock'
    return Paper.new if choice == 'paper'
    return Scissors.new if choice == 'scissors'
    return Lizard.new if choice == 'lizard'
    return Spock.new if choice == 'spock'
  end
end

class Human < Player
  def set_name
    n = ''
    loop do
      puts "What's your name?"
      n = gets.chomp
      break unless n.empty?
      puts "Sorry, must enter a value."
    end
    self.name = n
  end

  def choose
    choice = nil
    loop do
      puts "Please choose rock, paper, scissors, lizard, or spock:"
      choice = gets.chomp
      break if Move::VALUES.include?(choice)
      puts "Sorry, invalid choice."
    end
    self.move = make_move(choice)
  end
end

class Computer < Player
  ROBOTS = ['R2D2', 'Hal', 'Chappie', 'Number 5']

  def initialize
    set_name
    @score = 0
  end

  def choose
    self.move = make_move(Move::VALUES.sample)
  end
end

class R2D2 < Computer
  def set_name
    self.name = 'R2D2'
  end

  def choose
    self.move = make_move('rock')
  end
end

class Hal < Computer
  def set_name
    self.name = 'Hal'
  end

  def choose
    rng = rand(1..10)
    self.move = if rng > 3
                  make_move('spock')
                else
                  make_move('lizard')
                end
  end
end

class Chappie < Computer
  def set_name
    self.name = 'Chappie'
  end

  def choose
    choice = nil
    loop do
      choice = Move::VALUES.sample
      break unless choice == 'scissors'
    end
    self.move = make_move(choice)
  end
end

class Number5 < Computer
  def set_name
    self.name = 'Number 5'
  end

  def choose
    choice = nil
    loop do
      choice = Move::VALUES.sample
      break unless choice == 'paper'
    end
    self.move = make_move(choice)
  end
end

# Game orchestration engine
class RPSLSGame
  attr_accessor :human, :comp, :history

  def initialize
    @human = Human.new
    @comp = select_computer
    @history = History.new
  end

  def play
    display_welcome_msg
    loop do
      human.choose
      comp.choose
      post_game
      break unless play_again?
    end
    display_goodbye_msg
  end

  private

  def post_game
    display_moves
    display_winner
    display_score
    save_moves
    display_history
    winner?
  end

  def play_again?
    puts "----------------------------------"
    answer = nil
    loop do
      puts "Would you like to play again? (y/n)"
      answer = gets.chomp
      break if ['y', 'n'].include?(answer.downcase)
      puts "Sorry, invalid answer."
    end

    return true if answer.downcase == 'y'
    false
  end

  def select_computer
    selection = Computer::ROBOTS.sample
    return R2D2.new if selection == 'R2D2'
    return Hal.new if selection == 'Hal'
    return Chappie.new if selection == 'Chappie'
    return Number5.new if selection == 'Number 5'
  end

  def display_welcome_msg
    system 'clear'
    puts "=================================="
    puts "Welcome to Rock, Paper, Scissors, Lizard, and Spock!"
    puts "First player to 10 wins!"
  end

  def display_goodbye_msg
    puts "=================================="
    puts "Thanks for playing Rock, Paper, Scissors, Lizard, and Spock!"
  end

  def display_moves
    puts "#{human.name} chose #{human.move}."
    puts "#{comp.name} chose #{comp.move}."
  end

  def save_moves
    match = ["#{human.name}: #{human.move}, #{comp.name}: #{comp.move}"]
    history.moves << match
  end

  def display_winner
    configure_winner(human, comp)
  end

  def configure_winner(human, comp)
    if human.move > comp.move
      puts "#{human.name} won!"
      update_score(human)
    elsif human.move < comp.move
      puts "#{comp.name} won!"
      update_score(comp)
    else
      puts "It's a tie!"
    end
  end

  def update_score(player)
    player.score += 1
  end

  def display_score
    human_score = human.score
    human_name = human.name
    comp_score = comp.score
    comp_name = comp.name

    puts "---------------- Score ---------------------"
    puts "#{human_name}: #{human_score} / #{comp_name}: #{comp_score}"
  end

  def winner?
    if human.score == Player::WINNING_SCORE
      puts "#{human_name} WINS!"
    elsif comp.score == Player::WINNING_SCORE
      puts "#{comp_name} WINS!"
    end
  end

  def display_history
    puts history
  end
end

RPSLSGame.new.play
