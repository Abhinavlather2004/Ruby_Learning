# 7. Problem Statement: Write a Ruby program that attempts to connect to a server by simulating a method connect_to_server. If the connection fails (simulate failure with a RuntimeError), the program should retry the connection up to 3 times before giving up



class ServerConnector
  MAX_RETRIES = 3

  class ServerError < StandardError
    def initialize(message)
      super(message)
    end
  end

  def connect_to_server
    # Simulate a server connection attempt
    puts "Attempting to connect to the server..."

    # Simulate a connection failure with a RuntimeError
    if rand < 0.3  # 70% chance of failure
      raise RuntimeError, "Connection failed due to a runtime error"
    elsif rand < 0.3 # Additional failure scenario with ServerError
      raise ServerError.new("Server is not connected")
    end

    puts "Connected to the server successfully!"
  end

  def attempt_connection
    retries = 0

    begin
      connect_to_server
    rescue RuntimeError, ServerError => e
      retries += 1
      puts "Error: #{e.message}. Retry attempt ##{retries}."
      retry if retries < MAX_RETRIES
      puts "Failed to connect after #{MAX_RETRIES} attempts. Giving up."
    end
  end
end

# Create an instance of ServerConnector and attempt to connect to the server
connector = ServerConnector.new
connector.attempt_connection









=begin

class ServerError < StandardError
  def intialize(message)
    super(message)
  end
end
attempt =0
max_Attempt=3
begin
  attempt+=1 
  server=rand(0..1)
  puts "random server number is: #{server}"
  puts "Number of attempts is : #{attempt}"
  raise ServerError.new("SERVER Is not connected") if server == 1
  puts "Server connected"
rescue ServerError =>e 
  puts e.message
  retry if attempt < max_Attempt
end

=end