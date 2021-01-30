class Map_example < Array
  def map(&block)
    out = []
    self.each do |element|
      out << block.call(element)
    end
    out
  end
 end
 out =  Map_example.new([1,2,3,4])
puts out.map{|each| each+1}


