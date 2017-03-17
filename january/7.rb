require 'rspec'

menu = {
  'appetizers': ['Chips', 'Quesadillas', 'Flatbread'],
  'entrees': ['Steak', 'Chicken', 'Lobster'],
  'desserts': ['Cheesecake', 'Cake', 'Cupcake']
}

# first solution I came up with

def daily_special hash
  array = hash.values
  array_2 = array.sample
  array_3 = array_2.sample
  
end

# def daily_special hash
#   array = hash.valuse
#   array_2 = array.flatten.sample
# end

describe 'Nested hash element selector' do
  it 'selected a random element from the set of nested arrays' do
    expect(daily_special(menu).class).to eq(String)
  end
end

# take course and return a random menu item in that course category


# def create_special(hash, course)
#   hash.assoc course
#   key_hash = hash.select { |k,v| k == course }
#   special_hash = key_hash.values
#   special_hash_2 = special_hash.flatten.sample 
# end 

# p create_special(menu, 'appetizers')