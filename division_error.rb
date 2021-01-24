class DivisionError < StandardError
  attr_reader :reason
  def initialize(reason)
    @reason = reason
  end
end


def test_exception
  begin
    puts "Before exception"
    raise DivisionError, "Exception occurred"
    5/0
  rescue DivisionError => ex
    puts "exception occurred #{ex.message}, class name is #{ex.class}"
    end
end

test_exception
