# Write a Ruby program to process an array of names. If a specific name (e.g., "exit") is found, immediately stop the processing using throw and print a message indicating the name was found.


puts "Enter the size of array"
n = gets.chomp.to_i

array = []
n.times do |name|
  name = gets.chomp
  array << name
end

puts "Enter specific name."
target = gets.chomp

catch(:stop_processing) do
  array.each do |name|
    if name == target
      puts "Name is Found"
      throw :stop_processing
    end
  end
end

