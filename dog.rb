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

  def teach_trick(trick, &trick_block)
    unless respond_to?(trick)
      define_singleton_method(trick, &trick_block)
    else
      puts "You already have a method #{trick} defined. Try using 'teach_trick!' to override."
    end
  end

  def teach_trick!(trick, &trick_block)
    remove_method trick if respond_to?(trick)
    teach_trick(trick, &trick_block)
  end

  def method_missing(meth, *args, &block)
    puts "The method #{meth} is not available to #{@name} as you have specified" unless respond_to?(meth)
  end
end

d = Dog.new("Leo")
d.teach_trick("spin"){ "#{@name} is spinning" }
puts d.spin
d.teach_trick("spin"){ "added this again" }
puts d.spin
puts d.run_away
d.teach_trick!("run_away"){ "overrided method" }
puts d.run_away
# d.bark
# d.eat
# d.chase_cat
# d.chase_cat
