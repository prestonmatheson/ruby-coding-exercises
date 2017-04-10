# write a method that takes a list of strings and prints them, one per line, in a rectangular frame. 

arr = ["Hello", "World", "in", "a", "frame", "yeeeeeeeeettttt"]


def table arr

  n_times = arr.count

  longest = arr.max_by(&:length)

  long = longest.length + 2
  
  (long + 2).times do 
    print "*"
  end

  puts ""

  n_times.times do |n|
    print "*"
    print arr[n].center(long, ' ')
    print "*"
    
    puts ""
  end

  (long + 2).times do 
    print "*"
  end
end

table(arr)