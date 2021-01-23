class Prime_no
def get_prime(up_to)
    arr = (2..up_to).select { |num| (2...num).all? { |div| (num % div) > 0 } }
    puts arr.reject {|a| a%10 == 7}
end
end

obj = Prime_no.new()
obj.get_prime(10)