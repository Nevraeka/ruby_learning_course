def reverse_words(words)
  words[0..-1].gsub("\n","").split(" ").reverse.compact.join(" ")
end

puts "Enter a sentence you wish to reverse"
input = gets.chomp
reverse_words(input)
