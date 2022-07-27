VALID_CHOICES = %w(rock paper scissors lizard spock)
WINNERS = {
  'scissors' => %w(paper lizard),
  'paper' => %w(rock spock),
  'rock' => %w(lizard scissors),
  'lizard' => %w(spock paper),
  'spock' => %w(scissors rock)
}

def prompt(message)
  puts ">> #{message}"
end

def win?(first, second)
  WINNERS[first].include?(second)
end

def display_results(winner)
  if winner.nil?
    prompt "It's a draw"
  else
    prompt "#{winner} won!"
  end
end

def determine_winner(player, computer)
  if win?(player, computer)
    'You'
  elsif win?(computer, player)
    'Computer'
  end
end

prompt 'Welcome.'
player_score = 0
computer_score = 0

loop do
  choice = ''
  loop do
    prompt "Choose one: #{VALID_CHOICES.join(', ')}"
    choice = gets().chomp

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt "That's not a valid choice"
    end
  end
  computer_choice = VALID_CHOICES.sample

  winner = determine_winner(choice, computer_choice)

  display_results(winner)

  if winner == 'You'
    player_score += 1
  elsif winner == 'Computer'
    computer_score += 1
  end

  if player_score == 3
    prompt "You are the grand winner!"
    break
  elsif computer_score == 3
    prompt "The computer is the grand winner!"
    break
  end

  prompt 'do you want to play again?'
  answer = gets().chomp
  break unless answer.downcase().start_with?('y')
end
prompt 'Thank you for playing'
