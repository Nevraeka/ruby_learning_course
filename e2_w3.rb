# note: without error handling and defensive coding

puts "Enter a file path to update"
txt_file = gets.chomp
read_file = File.read(txt_file)

puts "Enter the word you wish to replace"
word = gets.chomp
puts "Enter the word you wish to replace that word with"
replacer_word = gets.chomp
txt = read_file.gsub(word, replacer_word)

puts "Writing to file..."
File.open(txt_file, "w"){|f| f << txt}
puts "File updated"