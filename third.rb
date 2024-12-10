#Write a Ruby program that prompts the user to input a valid integer between 1 and 10. If the user inputs an invalid number, use the redo statement to make them retry entering the value.
loop do
  print "Enter a number between 1 and 10: "
  n = gets.chomp.to_i

  if n > 0 && n < 10
    puts "The number #{n} is a valid input"
    break;
  else
    puts "Input is invalid. Try again! "
    redo
  end

end

