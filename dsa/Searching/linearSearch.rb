def linear_search(arr, target)
  arr.each_with_index do |element, index|
    return index if element == target
  end
  return -1
end

array = [4, 2, 5, 1, 7]
puts linear_search(array, 2)