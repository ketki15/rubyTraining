class Vehicle
  def initialize(tyres, seat_count)
    @no_of_tyres = tyres
    @seatCount = seat_count
  end

  def moves
    puts "#{self.class} is moving"
  end

end

class Car < Vehicle
  def initialize(l , s)
    super
  end
  def tyres
    moves()
    puts "#{@no_of_tyres}"
  end

  def count
    puts "#{@seatCount}"
  end
end

class Bike < Vehicle
  def initialize(l , s)
    super
  end
  def tyres
    moves()
    puts "#{@no_of_tyres}"
  end

  def count
    puts "#{@seatCount}"
  end
end

obj1 = Car.new(4,4)
obj1.tyres
obj1.count

obj2 = Bike.new(2,2)
obj2.tyres
obj2.count