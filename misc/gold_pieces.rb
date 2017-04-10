# Calculate the number of gold pieces on a chessborad given that the number on each square doubles.

# There once was a wise servant who saved the life of a prince. The king promised to pay whatever the servant could dream up. Knowing that the king loved chess, the servant told the king he would like to have gold pieces. One gold piece on the first square of a chess board. Two gold pieces on the next. Four on the third, and so on.

# There are 64 squares on a chessboard.

# Write a code that shows:

# how many gold pieces were on each square, and the total number of gold 

# from 1 - 64
# take the first number and multiply it by two and move to the next element multiplying the previous number by 2

def chess_gold (num, gold = [])
  return num if num == 1 || num == 2
  gold[num] ||= chess_gold(num, gold) * 2
end

def gold_at_position n
  arr = (1..64).to_a
  ans = arr.each do |x|
    p 2**(x-1)
  end
  2**n
end




p gold_at_position(64)


# def fib(a, b = {})
#   return a if a == 0 || a == 1
#   b[a] ||= fib(a-1, b) + fib(a-2, b)
# end

# p fib(100)
#
