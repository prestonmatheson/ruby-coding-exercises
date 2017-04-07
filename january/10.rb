require 'rspec'

def sum_generator num
  ans = (0..num).to_a
  ans.sum
end

describe 'Dynamic sum' do
  it 'Outputs a sum of digits, ranging from 0 through the argument value' do
    expect(sum_generator 10).to eq(55)
  end
end
