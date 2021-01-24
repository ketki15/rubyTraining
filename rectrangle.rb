class Rectrangle
  attr_accessor :area
  attr_writer :length
  attr_writer :breadth
  def initialize (len, br)
    @length = len
    @breadth = br
  end

  def cal_area
    @area =@length * @breadth
  end
end
obj = Rectrangle.new(10,20)
obj.cal_area
puts obj.area