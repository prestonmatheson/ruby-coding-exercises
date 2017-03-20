# Bob is a lackadaisical teenager. In conversation, his responses are very limited.

# Bob answers 'Sure.' if you ask him a question.

# He answers 'Whoa, chill out!' if you yell at him.

# He says 'Fine. Be that way!' if you address him without actually saying anything.

# He answers 'Whatever.' to anything else.

def bob
  print "Please say something to bob."
  words = gets.chomp!
        
  if words == words.upcase
    puts 'Whoa, chill out!'

  elsif words.split(//).last == "?"
    puts 'Sure.'
     
  elsif words.downcase == 'bob'
    puts 'Fine. Be that way!'     

  else
    puts 'Whatever'
  end
end

bob