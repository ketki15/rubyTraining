

obj = String.new("Hello World")
  def obj.size
    puts "singleton method overriding size method"
    return 8
  end

puts obj.size

obj2 = String.new("Hello World")
puts "normal size method #{obj2.size}"

