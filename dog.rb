class Dog
 
  def initialize(name)
    @name = name
  end

  def bark
    "Ruff!!!"
  end
  
  def eat
    "Nom.Nom.Nom."
  end
  
  def chase_cat
    canine_temporal_concept = rand(20)
    canine_temporal_concept.downto(1).each do
      puts "Which way did he go?!!" 
    end
    return "You caught the cat! Good job #{@name}!" if canine_temporal_concept >= 9    
    "He got away! You suck #{@name}"
  end
end

d = Dog.new("Leo")
d.bark
d.eat
d.chase_cat
d.chase_cat
