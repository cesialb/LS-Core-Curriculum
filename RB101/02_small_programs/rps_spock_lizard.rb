# rock beats lizard
# rock beats scissors
# paper beats rock
# paper beats spock
# scissors beats paper
# scissors beats lizard
# spock beats rock
# spock beats scissors
# lizard beats paper
# lizard beats spock

# Score Counter
  # When a player gets to 3, the game ends
  # Methods: one to add score to winner, another to check if their score == 3

VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']
POINTS_TO_WIN = 3

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper') ||
    (first == 'rock' && second == 'lizard') ||
    (first == 'paper' && second == 'spock') ||
    (first == 'scissors' && second == 'lizard') ||
    (first == 'spock' && second == 'rock') ||
    (first == 'spock' && second == 'scissors') ||
    (first == 'lizard' && second == 'paper') ||
    (first == 'lizard' && second == 'spock')
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def convert_choice(choice)
  if choice == 'r'
    choice = 'rock'
  elsif choice == 'p'
    choice = 'paper'
  elsif choice == 's'
    choice = 'scissors'
  elsif choice == 'l'
    choice = 'lizard'
  elsif choice == 'sp'
    choice = 'spock'
  end

  choice
end

choice = ''
player_count = 0
computer_count = 0

loop do
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    prompt('R for Rock, P for Paper, S for Scissors, L for Lizard, SP for Spock')
    choice = Kernel.gets().chomp()

    choice = convert_choice(choice.downcase)

    if VALID_CHOICES.include?(choice.downcase)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  Kernel.puts("You chose: #{choice}; Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)

  if win?(choice, computer_choice)
    player_count += 1
  elsif win?(computer_choice, choice)
    computer_count += 1
  end

  Kernel.puts("Player: #{player_count}")
  Kernel.puts("Computer: #{computer_count}")

  if player_count == POINTS_TO_WIN || computer_count == POINTS_TO_WIN
    puts ("Game Over")
    break
  end

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()

  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing! Good bye!")
