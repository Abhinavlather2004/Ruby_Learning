def merge_sorted_arrays(arr1, arr2)
  m = arr1.length
  n = arr2.length

  # Start comparing from the last elements of arr1 and arr2
  i = m - 1
  j = n - 1
  k = m + n - 1 # Index for the merged array space in arr1

  # Expand arr1 to hold both arrays
  arr1.concat([nil] * n)

  # Merge arrays starting from the largest elements
  while i >= 0 && j >= 0
    if arr1[i] > arr2[j]
      arr1[k] = arr1[i]
      i -= 1
    else
      arr1[k] = arr2[j]
      j -= 1
    end
    k -= 1
  end

  # If any elements are left in arr2, copy them to arr1
  while j >= 0
    arr1[k] = arr2[j]
    j -= 1
    k -= 1
  end

  arr1
end

arr1 = [1, 3, 5, 8]
arr2 = [2, 4, 6]

result = merge_sorted_arrays(arr1, arr2)
puts result.inspect

