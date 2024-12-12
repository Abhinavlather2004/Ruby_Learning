# Create an abstract base class Shape with the following characteristics:
# A method area (abstract) that must be implemented by any subclass.
# Define two subclasses Circle and Rectangle. The Circle class should calculate its area using the formula πr^2, and the Rectangle class should calculate its area using width * height.
# Create an instance of each subclass and calculate and display their areas.


class Shape
  def area
    begin
    raise NotImplementedError, "Subclass must implement area method"
    rescue NotImplementedError => e
      puts e.message 
    end
  end
end


class Circle < Shape
  def initialize(radius)
    @radius = radius
  end

  def area
    Math::PI * @radius * 2
  end
end
    
class Rectangle < Shape
  def initialize(length, width)
    @length = length
    @width = width
  end
  def area
    @length * @width
  end
end

circle = Circle.new(5)
puts "area of circle is: #{circle.area}"

rectangle = Rectangle.new(5,10)
puts "area of rectangle is: #{rectangle.area}"

