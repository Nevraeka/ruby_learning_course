=begin
doctest: random_year should return an inclusive array of years between 1930 and 1951"
>> random_recollections.include?(1930)
=> true
>> random_recollections.include?(1951)
=> true
>> random_recollections.include?(1955)
=> false
doctest: 'random year' should return a year before or equal to 1951 
>> random_year <= 1951
=> true
doctest: 'random_year' should return a year after or equal to 1930
>> random_year >= 1930 
=> true
doctest: 'random_year' should return an Fixnum type 
>> random_year.class
=> Fixnum
doctest: 'goodbye?' should return false if text is empty.
>> goodbye?("")
=> true
doctest: 'goodbye?' should return false if text is uppercase.
>> goodbye?("HELLO")
=> false
doctest: 'goodbye?' should return true if text is lowercased
>> goodbye?("hello")
=> true
=end

puts "Please chat with Grandma Ruby"

def deaf_grandma_chatter
  loop do
    input =  gets.strip
    puts grandmas_response
  end until goodbye?
end

def random_recollections
  (1930..1951).to_a
end

def random_year
 random_recollections[rand(random_recollections.size)]
end

def goodbye?
  (gets.chomp != gets.chomp.upcase! || gets.chomp == "")
end

def grandmas_response
  p goodbye?

  goodbye? ? "HUH?! SPEAK UP, SONNY!" : "NO! NOT SINCE #{random_year}!" 
end

deaf_grandma_chatter
