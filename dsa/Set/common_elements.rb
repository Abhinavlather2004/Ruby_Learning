# Find Common Elements in Arrays
# ● Problem: Given two arrays, find the elements that are present in both arrays.
# ● Solution Approach:
# ○ Convert the first array to a set.
# ○ Create an empty array to store common elements.
# ○ Iterate through the second array:
# ■ If the current element is present in the set, add it to the common elements
# array.
# ○ Return the common elements array.

require 'set'

def find_common_elements(arr1, arr2)
  set1 = arr1.to_set   
  common_elements = [] 

  arr2.each do |element|
    if set1.include?(element)  
      common_elements << element  
    end
  end

  common_elements  
end

arr1 = [1, 2, 3, 4, 5]
arr2 = [3, 4, 5, 6, 7]
puts find_common_elements(arr1, arr2).inspect