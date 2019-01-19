require 'rspec'

def pseudo_random num
  fiber = Fiber.new do
    # num.times do |num|
    #   Fiber.yield num
    # end
    Fiber.yield num
  end
end

describe 'Psudeo random number generator' do
  it 'creates the same sequence of random numbers' do
    random_sequence = pseudo_random 3
    expect(random_sequence.resume).to eq(37)
    expect(random_sequence.resume).to eq(12)
    expect(random_sequence.resume).to eq(72)
  end
end
