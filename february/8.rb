require 'rspec'

class Array
  def remove_duplicates
    parsed = []
    self.each do |item|
      unless parsed.include?(item)
        parsed << item
      end
    end
    parsed
  end

  def duplicates
    duplicates = []
    arr = []
    self.each do |item|
      if arr.include?(item) && !duplicates.include?(item)
        duplicates << item
      else
        arr << item
      end
    end
    duplicates
  end
end
describe 'Duplicate removal' do
  it 'Removed duplicates from an array' do
    arr = [1, 3, 4, 1, 4]
    expect(arr.remove_duplicates).to eq([1, 3, 4])
  end
end

describe 'Identify multiples' do
  it 'returns a list of numbers that have multiples' do
    arr = [1, 3, 4, 1, 4]
    expect(arr.duplicates).to eq([1, 4])
  end
end
