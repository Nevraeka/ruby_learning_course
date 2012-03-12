def int_collector (str)
  str.split(/[^0-9]/).map {| input_num | input_num.to_i}
end

def sum (nums)
  int_collector(nums).inject { | sum, i | sum + i }
end

puts "Enter any numbers you wish to sum up"
input = gets.strip
puts sum input
