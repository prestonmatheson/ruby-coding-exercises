# write a method that takes a list of strings and prints them, one per line, in a rectangular frame. 

arr = ["Hello", "World", "in", "a", "frame", "yeeeeeeeeettttt"]


def table arr

  n_times = arr.count

  longest = arr.max_by(&:length)

  long = longest.length + 2
  
  (long + 4).times do 
    print "*"
  end

  puts ""

  n_times.times do |n|
    puts "* #{arr[n].center(long, ' ')} *"
  end

  (long + 4).times do 
    print "*"
  end
    puts ""
end

table(arr)