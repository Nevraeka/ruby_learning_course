def round_float (num)
  num.to_f.round
end

def round_to_int (fl)
  round_float(fl).to_i
end

def split_floats(str)
  str.split(/[^(0-9)|(.)]/).reject(&:empty?)
end

def odd_even (num)
 round_to_int(num).even? ? 'even' : 'odd'
end

def odd_or_even? (str)
  split_floats(str).inject([]) { | a, num | a << { round_to_int(num) => odd_even(num)}; a }
end

def report_odd_or_even(input)
 odd_or_even?(input).each {|h| h.each { |key, val| puts "#{key} is an #{val} number"} }
end

puts "Enter a set of numbers to see which ones are even and which are odd"
input = gets.strip
report_odd_or_even(input) 
