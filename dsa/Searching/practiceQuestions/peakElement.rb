# Find the Peak Element
# A peak element is an element that is greater than its neighbors. Find the index of any peak element in an array.

# Hint: Use Binary Search for a logarithmic solution.
# Example: [1, 2, 3, 1] → Output: 2 (index of 3).

def find_peak(arr)
  low = 0
  high = arr.length - 1
  mid = low + (high - low)/2
  while low < high
    
    if arr[mid] < arr[mid+1]
      low = mid + 1
    else
      high = mid
    end
    mid = low + (high - low)/2
  end
  return low
end
array = [1, 2, 3, 4, 5, 1]
puts find_peak(array)
