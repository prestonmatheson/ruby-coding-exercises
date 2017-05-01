require 'pry'
# 128|64|32|16|8|4|2|1
# given a number, check if it can subtract the first element in the 8 bit binary.
# if it can be continue to subtract until it = 0. puts 1 while it can be and 0 if it cant
#   @eight_bit = [128, 64, 32, 16, 8, 4, 2, 1]
# def binary_translator num
#   @num = num
#   @index ||= -1
#   pry
#   until @index == @eight_bit.length do 
#     if @num - @eight_bit[@index] < 0
#       print 0
#       @index += 1
#     elsif @num - @eight_bit[@index] > 0
#       print 1
#       @index += 1
#       @new_num = (@num - @eight_bit[@index])
#         # pry
#       subtraction(@new_num)
#     end
#   end
# end

# def subtraction new_num
#   @new_num = new_num
#   until (new_num - @eight_bit[@index]) < 0 do 
#     @subtracted ||= new_num - @eight_bit[@index]
#     print 1
#     @index += 1
#   end
#   binary_translator(@subtracted)
# end

# binary_translator(10)


binary = sprintf("%08b", 13)

puts binary