def binary_search(arr, target)
  low = 0 
  high = arr.length - 1
  while low <= high
    mid = (high + low)/2
    if arr[mid] == target
      return mid
    elsif arr[mid] < target
      low = mid + 1
    else
      high = mid - 1
    end
  end
  -1
end

array = [1, 4, 6, 8, 9]
puts binary_search(array, 9)

