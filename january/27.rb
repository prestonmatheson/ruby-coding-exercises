require 'rspec'

def generate_tags keys, kv_pairs
  # determine and generate tags for each arg and adding a space at the begining
  tags = []
  keys.each do |key|
    tags << " #{key}='#{kv_pairs[key.to_sym]}'"
  end
  return tags
end

def image_tag path, optional_args=nil
  str = "<img src='#{path}'"
  if optional_args !=nil
    keys = optional_args.keys
    tags = generate_tags keys, optional_args
    tags.each do |tag|
      str += tag
    end
    str += ">"
  else
    str += ">"
  end
  return str
end
describe 'Cloned image_tag' do
  before do
    @image_path = "https://devcamp.com/some_pic.jpg"
  end

  it 'generates an HTML link' do
    expect(image_tag(@image_path)).to eq("<img src='https://devcamp.com/some_pic.jpg'>")
  end

  it 'generates an HTML link and can optionally take a width' do
    expect(image_tag(@image_path, width: 42)).to eq("<img src='https://devcamp.com/some_pic.jpg' width='42'>")
  end

  it 'generates an HTML link and can optionally take an alt tag' do
    expect(image_tag(@image_path, width: 42, alt: "My Image")).to eq("<img src='https://devcamp.com/some_pic.jpg' width='42' alt='My Image'>")
  end

  it 'generates an HTML link and can optionally take any type of attribute tag' do
    random = rand 100
    expect(image_tag(@image_path, random_value: random)).to eq("<img src='https://devcamp.com/some_pic.jpg' random_value='#{random}'>")
  end
end

