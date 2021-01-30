def block_example(&block)
  puts block_given?
  block.call(4)
end

block_example {|x| puts "block called #{x*2}"}

def proc_example
  arr = [1,2,3,4]
  puts "test"
  proc = proc{|y| puts "proc called #{y*2}"}
  arr.each { |x| proc.call(x)}
end

proc_example

def lambda_example
  arr = Array.[](1,2,3,4,5)
  puts "test lambda"
  lambda_ex = ->(n){n*2}
  p arr.map{|num| num =lambda_ex.call(num)}
end

lambda_example
