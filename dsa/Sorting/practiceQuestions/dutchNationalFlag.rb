def dutch_national_flag_sort(arr)
  low = 0
  mid = 0
  high = arr.length - 1

  while mid <= high
    if arr[mid] == 0
      # Swap arr[mid] and arr[low], then increment low and mid
      arr[mid], arr[low] = arr[low], arr[mid]
      low += 1
      mid += 1
    elsif arr[mid] == 1
      # 1 is already in the correct position, just move mid forward
      mid += 1
    else
      # Swap arr[mid] and arr[high], then decrement high
      arr[mid], arr[high] = arr[high], arr[mid]
      high -= 1
    end
  end
  arr
end

arr = [2, 0, 2, 1, 1, 2, 1, 0]
sorted_array = dutch_national_flag_sort(arr)
puts sorted_array.inspect