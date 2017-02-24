require 'rspec'

def new_max array_of_elements
	array_of_elements.max
end

describe 'New Max method' do
  it 'returns the max value from an array efficiently' do
    test_array = [2, 4, 10, 3, 1]
    expect(new_max(test_array)).to eq(10)
  end
end

new_vari = [1,2,11,13,14]
p new_max(new_vari)