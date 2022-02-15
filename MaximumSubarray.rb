def max_sub_array(nums)
    (1...nums.size).reduce([nums.first]) { |acc, i| acc << [nums[i], acc[i - 1] + nums[i]].max }.max
end

nums = [-2,1,-3,4,-1,2,1,-5,4]

puts max_sub_array(nums)