# Binary guessing game where cpu tells you a number is higher or lower from 1-25, and the user tries to guess the number.

# Bonus, give them an option to exit the program.


# Game flow:
#   user types a number 1-25
#   computer compares to a random number stored in a variable. 
#   computer compares ( displays higher or lower)
#   user guesses until the number is the same
# end

arr =*(1..25)

print "pick a number between 1 and 25"
@input = gets.chomp.to_i

@ans = arr.sample
def guessing_game
  continue = true
  if @input == @ans
    puts "#{@input} is equal to the computers choice of #{@ans}. Congrats!"
  else
    while @input != @ans do
      if @input > @ans
        print "The computer's number is lower, try again!(1-25)?"
        @input = gets.chomp.to_i
        guessing_game
      elsif @input < @ans
        print "The computer's number is higher, try again!(1-25)"
        @input = gets.chomp.to_i
        guessing_game
      else 
        print "That's not a valid entry...try again!(1-25)"
        @input = gets.chomp.to_i
        guessing_game
      end
    end
  end
end

guessing_game

# Bonus

# arr =*(1..25)

# print "pick a number between 1 and 25"
# @input = gets.chomp.to_i

# @ans = arr.sample
# def guessing_game
#   continue = true
#   if @input == @ans
#     puts "#{@input} is equal to the computers choice of #{@ans}. Congrats!"
#   else
#     print "Do you want to try again?(yes/no?)"
#     quit = gets.chomp.downcase
#     while @input != @ans && quit == 'yes' do
#       if @input > @ans
#         print "The computer's number is lower, try again!(1-25)?"
#         @input = gets.chomp.to_i
#         guessing_game
#       elsif @input < @ans
#         print "The computer's number is higher, try again!(1-25)"
#         @input = gets.chomp.to_i
#         guessing_game
#       else 
#         print "That's not a valid entry...try again!(1-25)"
#         @input = gets.chomp.to_i
#         guessing_game
#       end
#     end
#   end
# end

# guessing_game