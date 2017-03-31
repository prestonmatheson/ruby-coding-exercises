array = ["Ben", "Ryan", "Jason", "Hunter", "KJ", "Devan", "Cody", "Zach", "Stephanie", "Andrew", "Preston", "Ian", "Chase", "Shelbi"]


counter = 0 

while counter <= 1 do
  x = array.shuffle
  p "end of list"
  counter2 = 0
  while counter2 < x.length do
    p x[counter2]
    gets
    counter2 += 1

  end
  counter += 1
end
  
