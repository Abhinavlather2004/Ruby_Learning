# Find Duplicate in an Array
# Given an array of n+1 integers where each integer is in the range [1, n], find the duplicate.


def find_duplicate(nums)
  # Phase 1: Detect the cycle using Tortoise and Hare
  tortoise = nums[0]
  hare = nums[0]

  while true
    tortoise = nums[tortoise]
    hare = nums[nums[hare]]

    break if tortoise == hare  
  end

  #Find the entry point of the cycle
  tortoise = nums[0]  
  while tortoise != hare
    tortoise = nums[tortoise]
    hare = nums[hare]
  end

  # Return the duplicate number
  tortoise
end

arr = [3, 1, 2, 4, 2]
result = find_duplicate(arr)
puts result 
