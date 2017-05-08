require 'pry'
# accept a large integer
# split by commas
# add each new element
# regroup into propper number format
# repeat until the integer is only one digit.

def refactor lrg_num
  @refactored ||= []
  @new_num = []
  split_num = lrg_num.split(",")
  split_num.each do |x|
    group_sum(x)
  end
  if @new_num.length != 1
    regroup(@new_num)
  else
    p @new_num[0]
  end
end

def group_sum x
  single_digs = x.split(//).map(&:to_i)
  @new_num << single_digs.sum
end

def regroup y
  group = y.join
  if group.length > 3
    @refactored = group.gsub!(/(\d)(?=(\d\d\d)+(?!\d))/, "\\1,")
    refactor(@refactored)
  else
    refactor(group)
  end
end

refactor("123,456,789")