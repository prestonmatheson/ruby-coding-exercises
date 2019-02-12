require 'rspec'

def state_sorter states
  state_content_hash = {}
  states.each do |state|
    letters =  state.gsub(/[^a-zA-Z ]/, "")
    state_content_hash[state] = letters
  end
  sorted_hash_arr = state_content_hash.sort_by {|key, val| val}
  sorted_hash_arr.to_h.keys
end

describe 'State Data Sorter' do
  it 'properly sorts an array of states, even when the elements contain additional preceding values' do
    states = ['- AZ', 'KY', '* FL', '-- AR']
    expect(state_sorter(states).first).to eq('-- AR')
    expect(state_sorter(states).last).to eq('KY')
  end
end

