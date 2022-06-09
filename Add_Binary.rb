def add_binary(a, b)
    return (a.to_i(2) + b.to_i(2)).to_s(2)
end

puts add_binary(11,1)