class Shape
  
  def initialize(shape_name)
    @name = (shape_name ||= "A Generic Shape")
  end

  def click
    "#{@name} has been clicked by the user!"
  end

  def rotate
    "#{@name} has rotated 360 degrees!"
  end

  def play_sound
    "#{@name}.aiff is is now playing!"  
  end
  
end

# overriding method example
class Circle < Shape
   def initialize
     @name = "Circle"
   end
end

# use of "super" example
class Triangle < Shape
  def initialize
    super(self.class.to_s)
  end
end

class Square < Shape
  def initialize
    @name = "Square"
  end
end

# overloading example
class Polygon < Shape
  def initialize(*vertices)
    if (vertices.length > 4)
      @name = "Polygon"
      @vertices = vertices.to_a    
    elsif (vertices.length == 4)
      Square.new
    elsif (vertices.length == 3)
      Triangle.new
    else
      Circle.new 
    end
  end
end

if __FILE__ == $0
  [Circle, Triangle, Square].each { |klass|
    shape = klass.new
    puts shape.click
    puts shape.rotate
    puts shape.play_sound
    puts "\n"
  }
  poly = Polygon.new([0,0],[0,4],[2,6],[4,0],[4,2])
  puts poly.click
  puts poly.rotate
  puts poly.play_sound
end
