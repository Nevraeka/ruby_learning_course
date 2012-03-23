puts "Enter the two files you wish to compare (separated by a comma)"

files = gets

old = File.readlines files.split(",")[0].strip
new = File.readlines files.split(",")[1].strip

added   = (new - old).join("")
removed = (old - new).join("")
puts "Simple Diff of '#{files[0]}' and '#{files[1]}'"
puts "\nremoved files:\n\n#{removed}"
puts "\nadded files:\n\n#{added}"
