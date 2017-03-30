# reverse a string without using .reverse
# loop through each element in the string and place it in reverse order 

str = "reverse and test"
reverse = []
i = -1
array = str.split(//)

array.each do
  reverse << array[i]
  i-=1
end


ans = reverse.join

p ans