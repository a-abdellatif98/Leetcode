def fizz_buzz(n)
    answer = []
    (1..n).to_a.map do |x|
        if x % 3 == 0 && x % 5 == 0
            "FizzBuzz"
        elsif x % 3 == 0 
            "Fizz"
        elsif x % 5 == 0
            "Buzz"
        else
            x.to_s
        end
    end            
end


