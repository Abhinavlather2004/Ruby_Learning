#Create a method in Ruby that takes an array of strings and a string as input. The method should return the index of the string in the array and exit immediately if a match is found. If no match is found, return -1.

puts "Enter the size of array"
n = gets.chomp.to_i

array = []
n.times do |element|
  element = gets.chomp
  array << element
end

puts "Enter string input."
target = gets.chomp

def find_index_of_string(array, target)
  for i in 0...array.size
    return i if array[i] == target   
  end
     -1
end

puts find_index_of_string(array, target)
