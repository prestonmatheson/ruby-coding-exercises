require 'pry'
# accept a user input of a letter
# if it is in the phrase then return a confirmation and all of the slots with that letter should be revealed.
# if it is NOT in the phrase, return a failure and add a part to the man being hung. 
#   also, when a user guesses a letter they already guessed they should be warned and given another chance.

KEY_PHRASE = "I am a test hangman phrase"
binding.pry
def letter_picker
  puts "What letter would you like to guess?"
  @guessed_letter = gets.chomp.downcase
  letter_checker(@guessed_letter)    
end

def letter_checker letter
  if KEY_PHRASE.split(//).map(&:downcase).include?(letter)
    return
  end
end