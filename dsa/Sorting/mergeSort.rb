# divide-and-conquer algorithm that recursively divides the array into halves until each sub-array contains a single element. Then, it merges the sub-arrays back together in sorted order.


def merge_sort(arr)
  return arr if arr.length <= 1

  # Divide the array into two halves
  mid = arr.length / 2
  left = arr[0...mid]
  right = arr[mid...arr.length]

  # Recursively sort both halves
  sorted_left = merge_sort(left)
  sorted_right = merge_sort(right)

  # Merge the two sorted halves
  merge(sorted_left, sorted_right)
end

def merge(left, right)
  sorted = []
  i = 0
  j = 0

  # Compare elements from both arrays and add the smallest one to the sorted array
  while i < left.length && j < right.length
    if left[i] <= right[j]
      sorted << left[i]
      i += 1
    else
      sorted << right[j]
      j += 1
    end
  end

  # Add any remaining elements from the left array
  while i < left.length
    sorted << left[i]
    i += 1
  end

  # Add any remaining elements from the right array
  while j < right.length
    sorted << right[j]
    j += 1
  end

  sorted
end


array = [38, 27, 43, 3, 9, 82, 10]
sorted_array = merge_sort(array)
puts "Sorted Array: #{sorted_array.inspect}"
