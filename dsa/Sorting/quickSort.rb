# Selects a "pivot" element and partitions the array into two subarrays: one with elements less than the pivot and one with elements greater.

def quick_sort(arr)
  
  return arr if arr.length <= 1


  pivot = arr[-1] #last element

  left = [] # elements less than the pivot
  right = [] #elements greater than or equal to the pivot

  
  (0...arr.length - 1).each do |i| #excluding the pivot element
    if arr[i] < pivot
      left << arr[i]   # Elements less than pivot
    else
      right << arr[i]  # Elements greater than or equal to pivot
    end
  end

  # Recursively sort the left and right sub-arrays and combine them with the pivot
  quick_sort(left) + [pivot] + quick_sort(right)
end


array = [38, 27, 43, 3, 9, 82, 10]
sorted_array = quick_sort(array)
puts "Sorted Array: #{sorted_array.inspect}"
