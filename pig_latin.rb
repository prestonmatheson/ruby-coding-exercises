require 'pry'

class String
  def pig_latin
    if self[0,1].downcase.include?("a") || self[0,1].downcase.include?("e") ||self[0,1].downcase.include?("i") || self[0,1].downcase.include?("o") || self[0,1].downcase.include?("u")
      self << "ay"
    else 
      self << self[0,1]
      self.slice!(0)
      self << "ay"
    end
  end
end

test = %w[the cow jumped over the blue moon test is ten times better]

test.each do |x|
  x.pig_latin
end

p test
# take first letter and switch it with the last letter of the word
# => if it is a single sylable and starts with a vowel skip the swap
# add ay to the end of each word