def even_or_odd (str)
  str.split(/[^0-9]/).reject(&:empty?).map { | num | puts "The number #{num} is #{num.to_i % 2 == 0 ? 'even' : 'odd'}" }
end

puts "Enter a set of numbers to see which ones are even and which are odd"
input = gets.strip
puts even_or_odd input
