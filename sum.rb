def make_integer_array (str)
  str.split(",").map {| input_num | input_num.to_i}
end

def sum (nums)
  make_integer_array(nums).compact.inject { | sum, i | sum + i }
end

puts "Enter an array with the numbers you wish to add together"
input = gets.strip
puts sum input

