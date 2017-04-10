# write a method that takes a list of strings and prints them, one per line, in a rectangular frame. 

arr = ["Hello", "World", "in", "a", "frame"]


def table arr

  n = arr.count

  longest_element = arr.max_by(&:length)

  buffer = longest_element.length + 2
  
  (buffer + 4).times do 
    print "*"
  end

  puts ""

  n.times do |n|
    puts "* #{arr[n].center(buffer, ' ')} *"
  end

  (buffer + 4).times do 
    print "*"
  end
    puts ""
end

table(arr)