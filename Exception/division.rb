# 1. Problem Statement: Write a Ruby program that prompts the user to enter two numbers and performs division. Use exception handling to catch and handle the following errors:

# Division by zero (ZeroDivisionError)


puts "Enter numerator: "
numerator = gets.chomp.to_i

def checkValidDivisor(divisor)
  raise "Not a valid divisor" if divisor == 0
  puts "divisor is valid : #{divisor}"
  
end

begin
  puts "Enter divisor: "
  divisor = gets.chomp.to_i
  checkValidDivisor(divisor)
  puts ("answer after division is: #{numerator/divisor}")
rescue StandardError =>e 
  # puts "Zero division error"
  puts e.message
end


=begin
def get_number(num)
  begin
    print num
    number = Float(gets.chomp) 
  rescue ArgumentError
    puts "Invalid input. Please enter a valid number."
    retry 
  end
  number
end

def perform_division(numerator, divisor)
  raise ZeroDivisionError, "Division by zero is not allowed." if divisor == 0
  numerator / divisor
end

# Main program
begin
  numerator = get_number("Enter numerator: ")
  divisor = get_number("Enter divisor: ")
  result = perform_division(numerator, divisor)
  puts "The result of #{numerator} / #{divisor} is: #{result}"
rescue ZeroDivisionError => e
  puts e.message
end
=end


 