require 'rspec'

def increment_value str
  new_string = str.next
  new_item = new_string.split(//).last
  str.concat(new_item)
end

describe 'Increment string value sequence' do
  it 'appends the next item in the sequence of a string' do
    expect(increment_value 'abcde').to eq('abcdef')
    expect(increment_value '123').to eq('1234')
  end
end

