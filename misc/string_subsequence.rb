# Given two strings, write a program that efficiently finds the longest common subsequence.

# created a method that parses through two strings and finds any words that are the same in both.
# Look through the new array and find/return the longest element

def longest_common_word(str1, str2)
  split_1 = str1.split(/ /)
  split_2 = str2.split(/ /)
  same = []
  split_1.each do |common|
    if split_2.include?(common)
      same << common
    end
  end
  same.max_by(&:length)
end

str = "I am a pretty princess riding a bike"
str_2 = "I am not your average joe, I ride a bike"

p longest_common_word(str, str_2)