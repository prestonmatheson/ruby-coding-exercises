require 'rspec'
def months
  %w(January February March April May June July August September October November December)
end
describe 'Month generator' do
  it 'returns the full list of months for a year as an array' do
    expect(months).to eq(["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"])
  end
end

