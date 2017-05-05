require 'rspec'

class Array
  def odd_selector(self)
    self.each do |x|
      puts x if x % 2 == 1 
    end
  end
end

describe 'Odd selector' do
  it 'given an array, it returns a collection of the odd elements' do
    expect(Array(1..10).odd_selector).to eq([1, 3, 5, 7, 9])
  end
end
