# 5. Problem Statement: Write a Ruby method validate_email that takes an email address as input and raises an InvalidEmailError (custom exception) if the email does not match a standard email format. Test the method with various inputs and handle the exception in the caller.

class EmailError < StandardError
  def intialize(message)
    super(message)
  end
end

def validate_email (email)
  begin 
    regex ="^[a-z0-9](\.?[a-z0-9]){5,}@g(oogle)?mail\.com$"
    unless email.match?(regex)
      raise EmailError.new("not a valid email")
    end
    

    puts "IT Is a valid email"
    
  rescue EmailError => e 
    puts e.message
  end
end

puts "ENTER YOUR MAIL"
email=gets.chomp 
puts validate_email(email)