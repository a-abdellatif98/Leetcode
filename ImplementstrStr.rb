def str_str(haystack, needle)
    return 0 if (haystack.empty? && needle.empty?) || (haystack.empty? == false && needle.empty?)
    (0..haystack.size-1).each do |i|
      if haystack[i..i+needle.size-1] == needle
        return i
      end
    end
    return -1
    
    
end

puts str_str("aaaa","bba")