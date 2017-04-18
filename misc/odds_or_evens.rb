# you pick if you want odd or even 
# you and the opponent both pick 1 or 2 if you chose the correct type(even or odd) for the summation of the two numbers you win. Else the computer wins.


puts "So you dare to play against the great CPU? Then we'll let you choose...Odd or even?"
input = gets.chomp.downcase

@num_choice = "Is your secret number 1 or 2?"

def if_odd
  puts @num_choice
  players_choice = gets.chomp.to_i
  computers_choice = (1..2).to_a.sample
  p "The computer's choice was #{computers_choice}"
  decision = players_choice + computers_choice

  if decision % 2 == 1
    puts "GAH! You win...THIS time..."
  else
    puts "Looks like you chose odd, BIG MISTAKE! MWAHAHAHA!"
  end
end

def if_even
  puts @num_choice
  players_choice = gets.chomp.to_i
  computers_choice = (1..2).to_a.sample
  p "The computer's choice was #{computers_choice}"
  decision = players_choice + computers_choice

  if decision % 2 == 0
    puts "GAH! You win...THIS time..."
  else
    puts "Looks like you chose even, BIG MISTAKE! MWAHAHAHA!"
  end
end

if input == "odd"
  if_odd
elsif input == "even"
  if_even
end