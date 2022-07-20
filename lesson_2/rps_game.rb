VALID_CHOICES = %w(rock paper scissors)

def test_method
  prompt('test message')
end

# The call to test_method is going to fail because it's calling the prompt
# method before is defined
# test_method

def prompt(message)
  puts ">> #{message}"
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper')
end

def display_results(player, computer)
  if win?(player, computer)
    prompt 'You won'
  elsif win?(computer, player)
    prompt 'Computer won'
  else
    prompt "It's a draw"
  end
end

# This call to test_method does not fail because the method prompt has been
# defined before
# test_method

prompt 'Welcome.'
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

  display_results(choice, computer_choice)

  prompt 'do you want to play again?'
  answer = gets().chomp
  break unless answer.downcase().start_with?('y')
end
prompt 'Thank you for playing'
