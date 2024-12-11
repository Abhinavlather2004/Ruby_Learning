# 9. Problem Statement: Write a Ruby program with two methods: fetch_data and process_data. Simulate an exception in fetch_data and let the exception propagate to process_data. Handle the exception in process_data and display a meaningful error message.

def fetch_data
  data = rand(2)
  raise RuntimeError.new ("UNABLE TO FETCH DATA") if data == 1
  puts "DATA HAS BEEN FETCHED SUCESSFULLY"
end

def process_data
  begin 
    fetch_data
  rescue RuntimeError => e 
    puts "ERORR OCCURED IN PROCESSING DATA : #{e.message}" 
  end 
end

process_data
