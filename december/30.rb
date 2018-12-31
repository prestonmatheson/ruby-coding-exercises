require 'rspec'

class Hash
  def param_converter
    html_safe = ""
    self.map { |x, y| html_safe << (x.to_s + "=" + y + "&")}
    return html_safe.chomp("&")
  end
end

describe 'HTML Param Converter' do
  it 'Adds an HTML param converter to the Hash class' do
    hash = { :topic => "baseball", :team => "astros" }
    expect(hash.param_converter).to eq('topic=baseball&team=astros')
  end
end

