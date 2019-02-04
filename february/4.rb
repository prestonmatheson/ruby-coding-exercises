require 'rspec'
require 'csv'
require 'byebug'

def csv_parser file_path
  parsed = []
  CSV.foreach("support/crm.csv") do |row|
    parsed << row
  end
  return parsed
end
# csv_parser 'support/crm.csv'
describe 'CSV Parser' do
  it 'parses a CSV file and stores each line as an array, with each column as a separate element in the array' do
   final_data = [["Name", "Title", "Email"], ["Darth Vader", "CEO", "betterthan@theforce.com"], ["Luke Skywalker", "Dev", "daddy@issues.com"], ["Kylo Ren", "COO", "daddy2@issues.com"]]
   expect(csv_parser('support/crm.csv')).to eq(final_data)
  end
end


