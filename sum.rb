def sum (arr)
  arr.inject { | sum, i | sum + i }
end

puts "Enter an array with the numbers you wish to add together"
input = eval(gets.chomp)
puts sum input

