root_dir = Dir.pwd
temp_dir = "tmp"

puts root_dir

Dir.mkdir temp_dir unless Dir.exists?(temp_dir)
puts "You have created a directory named #{temp_dir}"
Dir.chdir temp_dir
puts "You have changed your working directory to #{Dir.pwd}"

Dir.chdir root_dir
puts "You have changed your working directory to #{Dir.pwd}"

Dir.rmdir temp_dir
puts "The directory #{temp_dir} has been removed"