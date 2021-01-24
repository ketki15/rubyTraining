class Polygon
  def initialize(parameter1, parameter2)
    @param1 = parameter1
    @param2 = parameter2
    puts "inside initialize"
  end

  def get_area
    puts "Area of polygon is"
  end

  private
  def details
    puts "private method"
  end

  protected
  def area_det
    puts "area depends on the length of polygon"
  end
end

class Square < Polygon
  def initialize(side)
    super(side, side)
    puts "inside initialize of square"
  end
  def self.info
    puts "polygon can be regular or irregular"
  end
  def get_area
    details
    area_det
    @area = @param1 * @param2
    puts "Area of square is #{@area}"
  end
end

class Rectangle < Polygon
  def initialize(len,bre)
    @l= len
    @b = bre
    puts "inside initialize of rectangle"
  end

  def get_area
    @area = @l * @b
    puts "Area of rectangle is #{@area}"
  end
  def self.info
    puts "polygon can be regular or irregular"
  end
end

class Triangle < Polygon
  def initialize(base, height)
    @base = base
    @height = height
    puts "inside initialize of triangle"
  end

  def get_area
    @area = (@base * @height)/2
    puts "Area of triangle is #{@area}"
  end
  def self.info
    puts "polygon can be regular or irregular"
  end
end

obj1 = Square.new(4)
obj1.get_area
Square.info
obj2 = Rectangle.new(4, 20)
obj2.get_area
obj3 = Triangle.new(8, 22)
obj3.get_area
