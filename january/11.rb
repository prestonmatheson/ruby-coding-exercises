require 'rspec'

class Array
  def odd_selector
    odds = []
    self.each do |n|
      (odds << n) if n.odd?
    end
    return odds
  end
end

describe 'Odd selector' do
  it 'given an array, it returns a collection of the odd elements' do
    expect(Array(1..10).odd_selector).to eq([1, 3, 5, 7, 9])
  end
end
