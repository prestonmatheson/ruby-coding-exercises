require 'rspec'

def string_sum range
  arr = range.to_a
  sum = 0
  arr.each do |num|
    sum += num.to_i
  end
  sum
end

describe 'Summing Strings' do
  it 'sums an array of string based integers' do
    expect(string_sum('1'..'20')).to eq(210)
    expect(string_sum('100'..'1000')).to eq(495550)
  end

  it 'sums an array of integers' do
    expect(string_sum(100..1000)).to eq(495550)
  end
end

