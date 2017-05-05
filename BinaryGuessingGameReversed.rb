# Binary guessing game where you input a number (1-25), and the computer hazards a guess within that range. You tell the computer to go higher or lower until the computer guesses the number.

# Exceptions built in so that if you say higher it now uses the number it just guessed as the new baeling, and if you say lower, it uses that number as its new ceilin.

puts "Pick a number between 1 - 25."

@ans = gets.chomp

#computer guess
@comp = rand(1..25)

def guessing_game

 if @comp == @ans
   puts "The computer's guess of #{@comp} is equal to #{@ans}. Congrats, you helped the computer find the answer!"

 else
   while @comp  != @ans
     puts "The computer's guess is #{@comp} - Is that guess high or low?"
     hint = gets.chomp.downcase

     if hint == "high"
       @comp = rand(1...@comp)
       guessing_game

     elsif hint == "low"
       @comp = rand(@comp..25)
       guessing_game
     end
   end
 end
end
guessing_game