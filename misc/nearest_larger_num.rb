require 'pry'
def arr_querry(x, i)
  # find the position of i in x
  # check the elements directly next to i return if i +/- 1 > i
  # call arr_querry recursively to go on if not.
  left = (i - 1)
  right = (i + 1)

  if x[left] > x[i] && x[right] > x[i]
    if x[left] > x[right]
      puts x[left]
    else puts x[right]
    end
  elsif x[left] > x[i]
    puts x[left]
  elsif x[right] > x[i]
    puts x[right]
  else 
    arr_querry(x, left)
    arr_querry(x, right)
  end
end
x = [1,4,3,2,5,7]
i = 3
arr_querry(x, i)