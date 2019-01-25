require 'rspec'

def lineup_generator(arr, &block)
  count = arr.count
  count_arr = (1..count).to_a
  array = []
  count_arr.each do |x|
    array << yield(x, arr[(x - 1)])
  end
  return array
end

describe 'Lineup Generator' do
  before do
    @players = ['Altuve', 'Correa', 'Bregman']
  end

  it 'can build a list driven lineup' do
    lineup = lineup_generator(@players) { |x, y| "#{x}. #{y}" }
    expect(lineup).to eq(["1. Altuve", "2. Correa", "3. Bregman"])
  end

  it 'can build an HTML driven lineup' do
    lineup = lineup_generator(@players) { |x, y| "<p>#{x}</p> <div>#{y}</div>" }
    expect(lineup).to eq(["<p>1</p> <div>Altuve</div>", "<p>2</p> <div>Correa</div>", "<p>3</p> <div>Bregman</div>"])
  end

  it 'can build an HTML ul driven lineup' do
    lineup = lineup_generator(@players) { |x, y| "<li>#{y}</li>" }
    expect(lineup).to eq(["<li>Altuve</li>", "<li>Correa</li>", "<li>Bregman</li>"])
  end
end

