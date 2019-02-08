require 'rspec'

def cloned_cycle arr, num
  arrs = []
  num.times do 
    arrs << arr.to_a
  end
  arrs.flatten
end

def odd_filter arr
  odd_arr = []
  arr.to_a.each do |itm|
    if itm.class == Fixnum
      odd_arr << itm if itm.odd?
    end
  end
  odd_arr
end
describe 'Cloned cycle' do
  it 'Iterates through an array a variable number of times and returns the full set of elements' do
    arr = (1..3)
    expect(cloned_cycle(arr, 3)).to eq([1, 2, 3, 1, 2, 3, 1, 2, 3])
  end
end

describe 'Odd Filter' do
  it 'Iterates through an array and returns only odd numbers' do 
    arr = (1..10)
    expect(odd_filter arr).to eq([1, 3, 5, 7, 9])
  end
  it 'Ignores elements that arent integers' do 
    arr = [1, 2, 3, 4, 5, "some words", true]
    expect(odd_filter arr).to eq([1, 3, 5])
  end
end