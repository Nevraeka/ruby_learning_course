class Rectangle

  def initialize (width, height)
    @width = width.to_f
    @height = height.to_f
  end

  def area
    @width * @height
  end

  def perimeter
    (@width*2) + (@height*2)
  end

end
