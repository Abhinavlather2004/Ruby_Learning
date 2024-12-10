#Write a Ruby program that iterates through an array of numbers. Stop the iteration when a number divisible by 7 is encountered and print the numbers processed until that point.


puts "enter the size of array: "
n = gets.chomp.to_i

array = []
puts "Enter elements: "
for i in 0...n
  array[i] = gets.chomp.to_i
end

for i in 0...n 
  if array[i] % 7 == 0
    break 
  end 
  puts "#{array[i]}"  
end

