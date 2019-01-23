require 'rspec'

module Tippy
    class Builder
        def initialize hash
            @total = hash[:total]
            @gratuity = hash[:gratuity]
        end

        def generate
            percent = parse_string @gratuity
            total_gratuity = total_gratuity percent
            add_to_total total_gratuity
        end

        private
            def parse_string str
                case str.to_s.downcase
                when 'standard'
                    0.18
                when 'high'
                    0.25
                when 'low'
                    0.15
                else
                    (str.to_f / 100)
                end
            end
            def total_gratuity gratuity_perc
                @total * gratuity_perc
            end
            def add_to_total gratuity
                return @total + gratuity
            end
    end
end

describe 'Tip Generator' do
  it 'Accurately generates a tip given string or integer input' do
    test_1 = Tippy::Builder.new(total: 100, gratuity: '23.5').generate
    test_2 = Tippy::Builder.new(total: 100, gratuity: 'high').generate
    test_3 = Tippy::Builder.new(total: 100, gratuity: 'LOW').generate
    test_4 = Tippy::Builder.new(total: 100, gratuity: 'standard').generate
    test_5 = Tippy::Builder.new(total: 100, gratuity: '18').generate
    test_6 = Tippy::Builder.new(total: 100, gratuity: 20).generate
    test_7 = Tippy::Builder.new(total: 100, gratuity: 0).generate

    expect(test_1).to eq(123.5)
    expect(test_2).to eq(125.0)
    expect(test_3).to eq(115.0)
    expect(test_4).to eq(118.0)
    expect(test_5).to eq(118.0)
    expect(test_6).to eq(120.0)
    expect(test_7).to eq(100.0)
  end
end

# 15%
# 20%
# 25%
# custom