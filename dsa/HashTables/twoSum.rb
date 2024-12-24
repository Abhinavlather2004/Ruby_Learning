# Two Sum: Given an array of integers, return indices of the two numbers such that they add up to a specific target.

def two_sum(nums, target)
  hash = {}
  nums.each_with_index do |x, i|
    difference = target - x
    return [hash[difference], i] if hash.key?(difference)
    hash[x] = i
    # puts hash
  end
end

arr = [1, 2, 3, 4, 5, 6, 7]
puts two_sum(arr, 5).inspect
