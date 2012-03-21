class Rectangle

  def initialize (base, height)
    @base = base.to_f
    @height = height.to_f
  end

  def area
    @base * @height
  end

  def perimeter
    (@base*2) + (@height*2)
  end

end

def rectangle_analysis(rect)
  analysis = "Area is = #{rect.area}\n"
  analysis << "Perimeter is = #{rect.perimeter}"
end

puts "Lets make a rectangle...."
puts "First enter the width for your rectangle"
width = gets.strip
puts "Finally enter the height of your rectangle"
height = gets.strip

rect = Rectangle.new(width, height)
puts rectangle_analysis(rect)
