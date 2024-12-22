# Maximum Subarray (Kadane’s Algorithm)
# Find the contiguous subarray with the maximum sum.

def max_subarray_sum(arr)
  
  if arr.empty?
    return 0  
  elsif arr.length == 1
    return arr[0]  
  end
  
  current_sum = arr[0]
  max_sum = arr[0]

  for i in 1..arr.length-1
    
    if current_sum + arr[i] > arr[i]
      current_sum = current_sum + arr[i] 
    else
      current_sum = arr[i]  
    end

    
    if current_sum > max_sum
      max_sum = current_sum 
    end
  end

  return max_sum
end

arr = [-2, 1, -3, 4, -1, 2, 1, -5, 4]
result = max_subarray_sum(arr)
puts result  #(the subarray [4, -1, 2, 1] has the maximum sum)
