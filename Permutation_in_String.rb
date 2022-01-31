# @param {String} s1
# @param {String} s2
# @return {Boolean}
def check_inclusion(s1, s2)
    return false if s2.size < s1.size
    window = Array.new(26, 0) 
    
    s1.each_char do |ch|
        window[ch.ord - 'a'.ord] += 1
    end
    
    s2.each_char.with_index do |ch, i|
        window[ch.ord - 'a'.ord] -= 1
        if i >= s1.size
            window[s2[i - s1.size].ord - 'a'.ord] += 1
        end
        if window.all?(&:zero?)
            return true
        end
    end
    
    false
end
