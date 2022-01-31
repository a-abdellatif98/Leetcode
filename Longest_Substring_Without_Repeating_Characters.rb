# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
    stack = []
  highest_count = 0
  s.each_char do |c|
    unless index = stack.index(c)
      stack.push(c)
    else
      stack.push(c)
      (index + 1).times {stack.shift}
    end
    highest_count = stack.length if stack.length > highest_count
  end
  highest_count
end
