def longest_common_prefix(strs)
    return "" if strs.nil? || strs.size == 0
    
    return strs[0] if strs.size == 1
  
  output = ""
  
  for i in 0...strs[0].size do
    for j in 1...strs.size do
      if strs[j][i] != strs[0][i]
        output = strs[0][0...i]
        return output
      end
    end
    output << strs[0][i]
  end
  
  output
  
end
