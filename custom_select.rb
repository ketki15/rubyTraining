class Custom_select<Array
  def my_select
    result = []
    self.each { |y|
      if yield(y) == true
        result << y
      end
    }
    result
  end
end
out =  Custom_select.new([1,2,3,4])
puts out.my_select{ |i| i>2 }