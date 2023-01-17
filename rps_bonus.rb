# rock paper scissors bonus

# Constant variables and methods for program

require 'yaml'
MESSAGES = YAML.load_file('rps_messages.yml')

WIN_HASH = {
  rock: ['scissors', 'lizard'],
  paper: ['rock', 'spock'],
  scissors: ['paper', 'lizard'],
  lizard: ['spock', 'paper'],
  spock: ['scissors', 'rock']
}

VALID_CHOICES = {
  r: 'rock',
  p: 'paper',
  sc: 'scissors',
  l: 'lizard',
  sp: 'spock'
}
def messages(message_key)
  MESSAGES[message_key]
end

def prompt(message)
  puts("=> #{message}")
end

def display_round(round)
  prompt("Round: #{round}")
end

def abbrev_to_full(valid_choices, player_choice)
  valid_choices[player_choice.to_sym]
end

def display_result(player1_choice, player2_choice, win_hash)
  if win_hash[player1_choice.to_sym].include?(player2_choice)
    prompt(messages('you_win'))
  elsif win_hash[player2_choice.to_sym].include?(player1_choice)
    prompt(messages('computer_win'))
  else
    prompt(messages('tie'))
  end
end

def display_grand_winner(score1, score2)
  if score1 == 3
    prompt(messages('you_grand_win'))
  elsif score2 == 3
    prompt(messages('computer_grand_win'))
  end
end

player_score = 0
computer_score = 0

# GAME BEGINS
loop do # main loop
  system "clear"
  prompt(messages('welcome'))

  answer = gets.chomp.downcase
  system "clear"

  if answer.start_with?('y')
    puts(messages('rules'))
    sleep(7)
  else
    prompt(messages('start'))
  end

  rounds = 1
  player_score = 0
  computer_score = 0
  loop do # gameplay rounds loop
    sleep(5)
    system "clear"
    display_round(rounds)

    choice = ''
    loop do # validating choice loop
      prompt(messages('choose'))
      VALID_CHOICES.each { |letter, word| puts("type: #{letter} for #{word}") }

      choice = gets.chomp.downcase
      system "clear"

      if VALID_CHOICES.values.include?(abbrev_to_full(VALID_CHOICES, choice))
        break
      else
        system "clear"
        prompt(messages('invalid'))
      end
    end

    choice = abbrev_to_full(VALID_CHOICES, choice)
    computer_choice = VALID_CHOICES.values.sample

    prompt("You chose: #{choice}; Computer chose: #{computer_choice}")
    display_result(choice, computer_choice, WIN_HASH)

    if WIN_HASH[choice.to_sym].include?(computer_choice)
      player_score += 1
    elsif WIN_HASH[computer_choice.to_sym].include?(choice)
      computer_score += 1
    end

    score_board = <<-MSG
    **********SCORE BOARD**********
          YOU: #{player_score}
     COMPUTER: #{computer_score}
    *******************************
    MSG
    puts score_board

    rounds += 1
    break if (player_score == 3) || (computer_score == 3)
  end
  display_grand_winner(player_score, computer_score)

  player_score = 0
  computer_score = 0
  rounds = 1

  prompt(messages('play_again?'))
  response = gets.chomp.downcase
  break if response.start_with?('n')
end
system "clear"
prompt(messages('thanks'))
