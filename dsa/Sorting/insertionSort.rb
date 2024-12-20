# It takes elements from the unsorted part and inserts them into their correct position in the sorted part.

def insertion_sort(arr)
  n = arr.length 
  (1...n).each do |i|
    key = arr[i]
    j = i - 1
    
    while j >= 0 && arr[j] > key
      arr[j + 1] = arr[j]
      j = j - 1
    end
    arr[j + 1] = key
  end
  arr
end

array = [12, 11, 13, 5, 6, 1]
sorted_array = insertion_sort(array)
puts "Sorted Array: #{sorted_array.inspect}"

    