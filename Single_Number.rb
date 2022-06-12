def single_number(nums)
    res = 0
    for i in 0...nums.length
        res ^= nums[i]
    end
    res
end

nums = [2,2,1]

puts single_number(nums)