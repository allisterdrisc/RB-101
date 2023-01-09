VALID_CHOICES = { 'r' => 'rock', 'p' => 'paper', 'sc' => 'scissors', 'sp' => 'spock', 'l' => 'lizard' }

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == 'r' && (second == 'sc' || second == 'l')) ||
    (first == 'p' && (second == 'r' || second == 'sp')) ||
    (first == 'sc' && (second == 'p' || second == 'l')) ||
    (first == 'sp' && (second == 'sc' || second == 'r')) ||
    (first == 'l' && (second == 'sp' || second == 'p'))
end

def display_results(player, computer)
  if win?(player, computer)
    prompt('You won!')
  elsif win?(computer, player)
    prompt('Computer won!')
  else
    prompt('You tied!')
  end
end

def keep_score(player, computer, score_hash)
  if win?(player, computer)
    score_hash[:you] += 1
  elsif win?(computer, player)
    score_hash[:computer] += 1
  end
end

def show_score(score_hash)
  score_hash.each {|player, points| prompt("#{player.to_s}: #{points}")}
end

def print_round_winner(score_hash)
  score_hash.each do |player, points|
    if points == 3
      puts "#{player} won the game!"
    end
  end
end

def reset_score(score_hash)
  score_hash.each { |player, _| score_hash[player] = 0 }
end

def reset_round(rounds)
  rounds = 1
end 

score = { you: 0, computer: 0}
round = 1
# GAME STARTS

loop do
  score = { you: 0, computer: 0}
  round = 1
  prompt("Welcome to RPSLS! \n First to three points wins the game")
  loop do
    puts "\n"
    prompt("Round: #{round}")
    choice = ''
    
    loop do
      prompt("Choose one: ")
      VALID_CHOICES.each { |letter, full_word| puts "type #{letter} for #{full_word}" }
      choice = Kernel.gets.chomp
      
      if VALID_CHOICES.include?(choice)
        break
      else
        prompt("That's not a valid choice.")
      end
    end

    computer_choice = VALID_CHOICES.keys.sample

    Kernel.puts("You chose #{VALID_CHOICES[choice]}. Computer chose #{VALID_CHOICES[computer_choice]}")

    display_results(choice, computer_choice)
    
    keep_score(choice, computer_choice, score)

    show_score(score)

    break if score.value?(3)

    round += 1
  end
  puts "\n"
  print_round_winner(score)

  reset_round(round)
  reset_score(score)

  prompt("Do you want to play again?")
  answer = Kernel.gets.chomp
  break unless answer.downcase.start_with?('y')
end
prompt("Thank you for playing. Good bye!")
