require 'pry'
# take a string.
# split into an array
# put each element (in reverse) in a new array and then join it

def string_reverse str
  broken_string = str.split(//)
  reversed_arr = []
  until broken_string.count == 0 do 
    reversed_arr << broken_string.pop
  end
  reversed_arr.join
end

str = "I am a string needing to be reversed"

puts string_reverse(str)