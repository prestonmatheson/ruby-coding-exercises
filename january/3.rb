require 'rspec'

class String
  def total_words
    parsed_words = self.gsub(/[^abcdefghijklmnopqrstuvwxyz ]/,'')
    count = parsed_words.split.count
  end

  def word_list
    word_list_count = {}
    parsed_words = self.gsub!(/[^abcdefghijklmnopqrstuvwxyz ]/,'').split
    parsed_words.each do |word|
      unless word_list_count.include? word
        word_list_count["#{word}"] = 1
      else
        word_list_count["#{word}"] += 1
      end
    end
    return word_list_count
  end
end

describe 'Word Reporter' do
  before do
    @str = "- the quick brown fox / jumped over the lazy fox."
  end

  it 'Counts words accurately' do
    expect(@str.total_words).to eq(9)
  end

  it 'Returns a hash that totals up word usage' do
    expect(@str.word_list).to eq({"the"=>2,
                                  "quick"=>1,
                                  "brown"=>1,
                                  "fox"=>2,
                                  "jumped"=>1,
                                  "over"=>1,
                                  "lazy"=>1}
                                )
  end
end

