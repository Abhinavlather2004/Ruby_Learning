# Find First and Last Position of an Element in a Sorted Array
# Given a sorted array, find the first and last position of a given element. Return [-1, -1] if the element is not present.


def find_first_position(arr, target)
  first = -1
  low = 0
  high = arr.length - 1
  while low <= high

    mid = (low + high)/2
    if arr[mid] == target
      first = mid
      high = mid - 1
    elsif arr[mid] > target
      high = mid - 1
    else 
      low = mid + 1
    end
  end
  return first
end

def find_last_position(arr, target)
  last = -1
  low = 0
  high = arr.length - 1
  while low <= high

    mid = (low + high)/2
    if arr[mid] == target
      last = mid
      low = mid + 1
    elsif arr[mid] > target
      high = mid - 1
    else 
      low = mid + 1
    end
  end
  return last
end

array = [1, 2, 3, 3, 3, 3, 5] 
puts "enter target: "
target = gets.chomp.to_i
initial = find_first_position(array, target)
ending = find_last_position(array, target)

result = [initial, ending]
puts result.inspect


