#Write a program that simulates a simple counter. It attempts to divide a number by a given divisor. If the divisor is 0, retry the division after prompting the user for a new divisor.

#with using retry statement
begin 
  print "Enter a divisor: "
  n = gets.chomp.to_i
  raise "error!!" if n == 0
  puts "#{n} is a valid divisor. "
rescue
  puts "Invalid divisor. Input another divisor. "
  retry if n == 0
end



=begin

#With using redo statement
loop do
  print "Enter a divisor: "
  n = gets.chomp.to_i
  if n != 0
    puts "It is a valid divisor"
    break
  else
    puts "Not a valid divisor. Retry with new divisor!"
    redo
  end
end
=end