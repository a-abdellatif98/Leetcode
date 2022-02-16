def third_max(nums)
    sortnums = nums.uniq.sort
    if sortnums.length < 3
        return sortnums.last
    else
        return sortnums[-3]
    end    
end