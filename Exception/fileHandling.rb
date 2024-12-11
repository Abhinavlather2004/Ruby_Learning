# 6. Problem Statement: Write a Ruby program that opens a file for writing, writes some content, and ensures the file is closed properly even if an exception occurs during the writing process.
begin 
  puts "ENter a file path : "
  path=gets.chomp 
  fileis = File.open(path, "w")
  puts "enter the content u want in file"
  content= gets.chomp 
  fileis.puts(content)
  puts "content is written sucessfully "
rescue Errno::ENOENT 
  puts "FILE NOT FOUND"
rescue Errno::EACCES
  puts "PERMISSION DENIED"
ensure
  fileis.close if fileis
  puts "file is closed "
end