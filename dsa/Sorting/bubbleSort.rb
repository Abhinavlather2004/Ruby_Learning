def bubble_sort(arr)
  n = arr.length
  (n - 1).times do
    (0...n - 1).each do |i|
      if arr[i] > arr[i + 1]
        temp = arr[i]
        arr[i] = arr[i + 1]
        arr[i + 1] = temp
      end
    end
  end
  arr
end

array = [2, 1, 9, 4, 7, 3]
puts bubble_sort(array).inspect