class String

  def syllable_count # this method is written by Elisabeth Hendrickson, Quality Tree Software, Inc. and used here for educational purposes only
    consonants = "bcdfghjklmnpqrstvwxz"
    vowels = "aeiouy"
    processed = self.downcase
    suffix_bonus = 0
    #puts "*** 0 #{processed}"
    if processed.match(/ly$/)
      suffix_bonus = 1
      processed.gsub!(/ly$/, "")
    end
    if processed.match(/[a-z]ed$/)
      # Not counting "ed" as an extra symbol. 
      # So 'blessed' is assumed to be said as 'blest'
      suffix_bonus = 0 
      processed.gsub!(/ed$/, "")
    end
    #puts "*** 1 #{processed}"
    processed.gsub!(/iou|eau|ai|au|ay|ea|ee|ei|oa|oi|oo|ou|ui|oy/, "@") #vowel combos
    #puts "*** 2 #{processed}"
    processed.gsub!(/qu|ng|ch|rt|[#{consonants}h]/, "=") #consonant combos
    #puts "*** 3 #{processed}"
    processed.gsub!(/[#{vowels}@][#{consonants}=]e$/, "@|") # remove silent e
    #puts "*** 4 #{processed}"
    processed.gsub!(/[#{vowels}]/, "@") #all remaining vowels will be counted
    #puts "*** 5 #{processed}"
    return processed.count("@") + suffix_bonus
  end
  

  def pig_latin
    if (self[0,1].downcase.include?("a") || self[0,1].downcase.include?("e") ||self[0,1].downcase.include?("i") || self[0,1].downcase.include?("o") || self[0,1].downcase.include?("u")) && self.syllable_count == 1
      self << "ay"
    else 
      self << self[0,1]
      self.slice!(0)
      self << "ay"
    end
  end
end

test = %w[you idiot jumped over the blue moon test is ten times better]

test.each do |x|
  x.pig_latin
end

p test
# take first letter and switch it with the last letter of the word
# => if it is a single sylable and starts with a vowel skip the swap
# add ay to the end of each word
