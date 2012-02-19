def break_into_lines(input) 
  input.each_line.with_index(1) {|line, index| puts "Line #{index}: #{line}" }
end

s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members."

break_into_lines(s)