def reverse_words(words)
  words[0..-1].split(/.\s/).reverse.compact.join(" ")
end

puts "Enter a sentence you wish to reverse"
input = gets.strip

puts reverse_words(input)
