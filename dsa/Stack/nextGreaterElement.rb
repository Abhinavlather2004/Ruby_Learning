# Next Greater Element I: You are given two integer arrays nums1 and nums2 where nums2 is a permutation of nums1. Find the array ans such that ans[i] is equal to the next greater element of nums1[i] in nums2. If there is no next greater element, then the answer for this element is -1.

def next_greater_element(nums1, nums2)
  next_greater = {}
  stack = []

  nums2.each do |num|
    while !stack.empty? && num > stack[-1]
      smaller_num = stack.pop
      next_greater[smaller_num] = num
    end
    stack.push(num)
  end
  stack.each {|num| next_greater[num] = -1}

  nums1.map {|num| next_greater[num]}

end

nums1 = [4, 1, 2]
nums2 = [1, 3, 4, 2]
puts next_greater_element(nums1, nums2).inspect