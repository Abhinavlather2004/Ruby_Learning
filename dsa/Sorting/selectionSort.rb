#selects the smallest element from the unsorted part and moves it to the sorted part.

def selection_sort(arr)
  n = arr.length
  (0...n - 1).each do |i|
    min_index = i

    (i + 1...n).each do |j|
      if arr[j] < arr[min_index]
        min_index = j
      end
    end

    if min_index != i
      temp = arr[i]
      arr[i] = arr[min_index]
      arr[min_index] = temp
    end
  end
  arr
end

array = [64, 25, 12, 22, 11]
sorted_array = selection_sort(array)
puts "Sorted Array: #{sorted_array.inspect}"


