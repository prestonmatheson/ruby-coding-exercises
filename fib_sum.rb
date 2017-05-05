require 'pry'

# x times add the prior 2 numbers in the sequence together and puts the answer
def fib_sum n
  @arr = []
  (n + 1).times do |x|
    x ||= 0
    if x == 0 || x == 1
      @arr << x 
      puts x
    else
      new_num = @arr[x - 2] + @arr[x - 1]
      @arr << new_num
      puts new_num
    end
  end
end

fib_sum(10)