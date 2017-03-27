print "Rock, Paper, Scissors, Lizard or Spock?"
input = gets.chomp.downcase

opt = ["rock", "paper", "scissors", "lizard", "spock"]
random_gen = opt.sample

 if input == "scissors" && random_gen == "paper"
   puts "Scissors cuts Paper. You win!"
 elsif input == "paper" && random_gen == "rock"
   puts "Paper covers Rock. You win!"
 elsif input == "rock" && random_gen == "lizard"
   puts "Rock crushes Lizard. You win!"
 elsif input == "lizard" && random_gen == "spock"
   puts "Lizard poisons Spock. You win!"
 elsif input == "spock" && random_gen == "scissors"
   puts "Spock smashes Scissors. You win!"
 elsif input == "scissors" && random_gen == "lizard"
   puts "Scissors decapitates Lizard. You win!"
 elsif input == "lizard" && random_gen == "paper"
   puts "Lizard eats Paper. You win!"
 elsif input == "paper" && random_gen == "spock"
   puts "Paper disproves Spock. You win!"
 elsif input == "spock" && random_gen == "rock"
   puts "Spock vaporizes Rock. You win!"
 elsif input == "rock" && random_gen == "scissors"
   puts "Rock crushes Scissors. You win!"
 elsif input == random_gen
   puts "Try again. You chose the same as the computer"
 else
   puts "#{random_gen} beats #{input}. What a loser!"
 end