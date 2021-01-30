class Custom_functions<Array
  def my_each
    i = 0
    while i < self.length
      yield self[i]
      i += 1
    end
  end
end

out =  Custom_functions.new([1,2,3,4])
puts out.my_each { |i| puts i**2 }