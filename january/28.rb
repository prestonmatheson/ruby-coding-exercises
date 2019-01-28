require 'rspec'
require 'date'

def date_conversion date_str
  Date.parse(date_str)
end
def day_counter
  d1 = date_conversion "December 25, 2016"
  d2 = date_conversion "July 1, 2004"
  r = d1 - d2
  r.to_i
end

describe 'Day counter' do
  it 'counts the days between Christmas in 2016 and July 1, 2004' do
    expect(day_counter).to eq(4560)
  end
end

