def plus_one(digits)
    puts digits
    str = ""
    digits.each_index { |i|
        puts digits[i]
        str = str + digits[i].to_s
        puts "this is #{str}"
    }
    x = str.to_i
    x = x+1
    return x.to_s.scan(/./).map {|e| e.to_i }
end

x = [4,3,2,1]
puts plus_one(x)