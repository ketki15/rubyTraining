$glo_var = 20
class Test
  @@var_cls = 30
  def initialize(loc_var)
    @inst_var = loc_var
  end
  
  def add_num()
    sum = glo_var+var_cls+loc_var
    puts "Sum is #{sum}"
    end

    classobj = Test.new(40)
    classobj.add_num()  