# a lot of meta programming is done in the initializer folder
class Baseball
end

# p Baseball.new.swing

class Baseball
  def swing
    "Homerun"
  end
end

p Baseball.new.swing

class Baseball
  def swing
    "Strike"
  end
end

p Baseball.new.swing