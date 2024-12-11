#Problem Statement: Create a custom exception class called AgeError. Write a Ruby program that takes a user's age as input and raises an AgeError if the input is not between 18 and 100. Handle the exception and provide a user-friendly error message.

class AgeError < StandardError
  def initialize(message = "Invalid age")
    super(message)
  end
end

def is_age_valid
  begin
    puts "Enter the age of user: "
    age = gets.chomp.to_i
    raise AgeError, "Age must be between 18 and 100 " if age < 18 || age > 100
    puts "Age of user is valid: #{age}"
  rescue AgeError => e
    puts "#{e.message}"
  end
end

is_age_valid
