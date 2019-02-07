require 'rspec'

def find_element arrs, element
  arrs.each do |arr|
    return arr if arr[1] == element
  end
end

def find_jersey_number arrs, player
  arrs.each do |arr|
    return arr[0] if arr[1] == player
  end
end

describe 'Find Element' do
  it 'returns an array from a nested array if the second element equals the queried element' do
    players = [
      [27, 'Jose Altuve'],
      [2,  'Alex Bregman'],
      [1,  'Carlos Correa'],
      [9,  'Marwin Gonzalez'],
      [10, 'Yulieski Gurriel']
    ]

    expect(find_element(players, 'Jose Altuve')).to eq([27, 'Jose Altuve'])
  end
end

describe 'Find Jersey Number' do
  it 'returns the jersey number given a player name' do
    players = [
      [27, 'Jose Altuve'],
      [2,  'Alex Bregman'],
      [1,  'Carlos Correa'],
      [9,  'Marwin Gonzalez'],
      [10, 'Yulieski Gurriel']
    ]

    expect(find_jersey_number(players, 'Carlos Correa')).to eq(1)
  end
end
