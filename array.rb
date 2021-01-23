class Student_hash
  @@students = []

  def add_student(name:, roll_no:, marks:)
    student = {}
    student[:name]    = name
    student[:roll_no] = roll_no
    student[:marks]   = marks
    @@students.push(student)
  end

  def students_lst
    puts @@students
  end

  def marks(inputname)
    res = @@students.each{ |student| 
    	(student[:name] == inputname && student[:marks] >= 35)}
    	return res ? 'Pass' : 'Fail'
  end

  def case_method(iname)
  	student = @@students.find{ |student| 
    	student[:name] == iname}
    		case student[:marks]
    		when 0...40
    			puts "D"
    		when 40...60
    			puts "C"
    		when 60...80
    			puts "B"
    		else
    			puts "A"
    		end
    end
end

clasobj = Student_hash.new()
clasobj.add_student(name: "abs", roll_no: 1, marks: 34)
clasobj.add_student(name: "joe", roll_no: 3, marks: 56)
clasobj.add_student(name: "harry", roll_no: 4, marks: 90)
inputname = "joe"
iname = "harry"
clasobj.marks(inputname)
clasobj.case_method(iname)