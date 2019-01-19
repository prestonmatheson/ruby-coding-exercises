require 'rspec'

def array_rotation arr, num
  loop do 
    unless arr.last == num
      arr.unshift(arr.last)
      arr.pop
    else
      return arr
      break
    end
  end
end

describe 'Array index change' do
  it 'Rotates the index values for each of the array elements' do
    expect(array_rotation([1, 2, 3], 2)).to eq([3, 1, 2])
  end
end

# 1 2 3 4 5
# 5 1 2 3 4
# 4 5 1 2 3
# 3 4 5 1 2