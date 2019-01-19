require 'rspec'

# First way works
# class Array
#   def does_it_have? element
#     included = false
#     self.each do |i|
#       included = true if i == element 
#     end
#     return included
#   end
# end

# This way handles scaling better.
class Array
  def does_it_have? element
    self.each do |i|
      if i == element 
        return true 
      end
    end
    return false
  end
end

describe 'Include? clone' do
  it 'returns true if a supplied element is included in an array' do
    arr = [2, 5, 100, 4]
    expect(arr.does_it_have? 5).to eq(true)
    expect(arr.does_it_have? 20).to eq(false)
  end
end

