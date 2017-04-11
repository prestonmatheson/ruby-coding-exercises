# a: .-
# b: -...
# c: -.-.
# d: -..
# e: .
# f: ..-.
# g: --.
# h: ....
# i: ..
# j: .---
# k: -.-
# l: .-..
# m: --
# n: -.
# o: ---
# p: .--.
# q: --.-
# r: .-.
# s: ...
# t: -
# u: ..-
# v: ...-
# w: .--
# x: -..-
# y: -.--
# z: --..


# - Take a string and break it up into words.
# - print a "/" after each word
# - break each word into letters
# - translate each letter into morse





def morse word
  arr = word.downcase.split(//).to_a
  arr.each do |x|
    case x
      when "a" 
        print ".-"
      when "b" 
        print "-..."
      when "c" 
        print "-.-."
      when "d" 
        print "-.."
      when "e" 
        print "."
      when "f" 
        print "..-."
      when "g" 
        print "--."
      when "h" 
        print "...."
      when "i" 
        print ".."
      when "j" 
        print ".---"
      when "k" 
        print "-.-"
      when "l" 
        print ".-.."
      when "m" 
        print "--"
      when "n" 
        print "-."
      when "o" 
        print "---"
      when "p" 
        print ".--."
      when "q" 
        print "--.-"
      when "r" 
        print ".-."
      when "s" 
        print "..."
      when "t" 
        print "-"
      when "u" 
        print "..-"
      when "v" 
        print "...-"
      when "w" 
        print ".--"
      when "x" 
        print "-..-"
      when "y" 
        print "-.--"
      when "z" 
        print "--.."
      when "1"
        print ".----"
      when "2"
        print "..---"
      when "3"
        print "...--"
      when "4"
        print "....-"
      when "5"
        print "....."
      when "6"
        print "-...."
      when "7"
        print "--..."
      when "8"
        print "---.."
      when "9"
        print "----."
      when "0"
        print "-----"
    end
    print "   "
  end
  puts "/"
end

str = "thank you daren you are the best"

@words = str.split(/ /).to_a

@words.each do |x|
  morse(x)
end





# To translate from morse code into english
# Break each morse word into letters
# translate each morse-letter to the corisponding letter in english
# join letters by words to form a sentence

morse = " - .... .- -. -.- / -.-- --- ..- / -.. .- .-. . -. / -.-- --- ..- / .- .-. . / - .... . / -... . ... - /"

def to_english morse
  letters = morse.downcase.split(/ /).to_a
  letters.each do |x|
    case x
      when ".-"
        print "a" 
      when "-..."
        print "b"
      when "-.-."
        print  "c"
      when "-.."  
        print "d"
      when "." 
        print "e"
      when  "..-."
        print "f"
      when  "--."
        print "g"
      when  "...."
        print "h"
      when  ".."
        print "i"
      when  ".---"
        print "j"
      when  "-.-"
        print "k"
      when  ".-.."
        print "l"
      when  "--"
        print "m"
      when  "-."
        print "n"
      when "---" 
        print "o"
      when ".--."
        print "p"
      when "--.-"
        print "q"
      when ".-."
        print "r"
      when  "..."
        print "s"
      when "-" 
        print "t"
      when "..-"
        print "u"
      when "...-"
        print "v"
      when ".--"
        print "w"
      when "-..-"
        print "x"
      when "-.--"
        print "y"
      when "--.."
        print "z"
      when ".----"
        print "1"
      when "..---"
        print "2"
      when "...--"
        print "3"
      when "....-"
        print "4"
      when "....."
        print "5"
      when "-...."
        print "6"
      when "--..."
        print "7"
      when "---.."
        print "8"
      when "----."
        print "9"
      when "-----"
        print "0"
      when "/"
        puts " "
    end
  end
end

to_english(morse)