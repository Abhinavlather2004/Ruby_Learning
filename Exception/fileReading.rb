# 3. Problem Statement: Write a Ruby program that reads a file specified by the user. Use multiple rescue blocks to handle the following scenarios:

# File not found (Errno::ENOENT)
# Permission denied (Errno::EACCES)
# Any other generic exceptions

def read_file
  begin 
    puts "Enter file name: "
    file_name = gets.chomp
    file = File.open(file_name, "r") 
    content = file.read

    # content = File.read(file_name)
    puts "File content: #{content}"

  rescue Errno::ENOENT
    puts "The file name #{file_name} was not found. Please try again"
  rescue Errno::EACCES
    puts "Access denied for the file #{file_name}"
  rescue StandardError => e
    puts "Unexpected error occurred #{e.message}"
  end
end

read_file