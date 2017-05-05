# (1..100).each do |i|
#     if i % 3 == 0 && i % 5 == 0
#       puts "FizzBuzz"
#     elsif i % 5 == 0 
#       puts "Buzz"
#     elsif i % 3 == 0 
#       puts "Fizz" 
#     else puts i
#     end
#   i += 1
# end

def fizz_buzz i
  system'clear'
  if i % 3 == 0 && i % 5 == 0
    puts "You found FizzBuzz"
  elsif i % 3 == 0
    puts "You only found Fizz"
  elsif i % 5 == 0
    puts "You only found Buzz"
  else
    puts "Sorry, No luck this time!"
  end
  puts "Would you like to play again(y/n)"
  ans = gets.chomp.downcase
  if ans == "y"
    puts "What value would you like to try?"
    new_input = gets.chomp.to_i
    fizz_buzz(new_input)
  else
    puts "Thanks for playing!"
  end
end

p fizz_buzz(3)