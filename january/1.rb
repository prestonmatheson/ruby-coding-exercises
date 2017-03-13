require 'rspec'

def title_creator title
   
   p "<h1>#{title}</h1>"

end

describe 'HTML h1 converter' do
  it 'outputs an h1 tag given a title' do
    expect(title_creator 'A Heading').to eq('<h1>A Heading</h1>')
  end
end

=begin

(OPTION 2 FOR MORE ADVANCED OPTIONS)

(creates an array of strings withing the {})
heading = %w{h1 title_placeholder h1}

(allows the replacement of title_placeholder in the array)
heading[1] = title

(puts the array elements where 's' is)
"<%s>%s</%s>" % heading 


=end