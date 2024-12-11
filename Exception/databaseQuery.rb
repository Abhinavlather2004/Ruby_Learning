# Problem Statement: Create a Ruby program that raises a custom exception DatabaseError if a database query fails. Inside the exception, raise another exception ConnectionError if the failure is due to a lost database connection. Demonstrate how to chain exceptions to understand the root cause.

class DataError < StandardError
  def intialize(message)
    super(message)
  end
end

begin 
  db= rand(0..1)
  raise DataError.new ("DATA BASE IS NOT CONNECTED") if db == 1
  puts "data base connected"
  begin 
    puts "Enter your QUERY : "
    query = gets.chomp.to_s 
    raise DataError.new ("QUERY IS NOT VALID") unless query == "SELECT" || query == "CREATE" || query == "READ" || query == "UPDATE" || query == "DELETE"
    puts "Valid query"
  rescue DataError => e 
    puts e.message 
  end


rescue DataError => e
  puts e.message


end