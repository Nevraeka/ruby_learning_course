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
doctest: 'grandma_can_hear' should return false if text is empty.
>> grandma_can_hear("")
=> true
doctest: 'grandma_can_hear' should return false if text is uppercase.
>> grandma_can_hear("HELLO")
=> false
doctest: 'grandma_can_hear' should return true if text is lowercased
>> grandma_can_hear("hello")
=> true
=end

def deaf_grandma_chatter
  puts "Please chat with Grandma Ruby" 
  loop do
    break if question == "BYE!"
    question =  gets.chomp
    puts grandmas_answer(question)
  end 
end

def random_recollections
  (1930..1951).to_a
end

def random_year
 random_recollections[rand(random_recollections.size)]
end

def grandma_can_hear(input)
  (input != input.upcase! || input == "")
end

def grandmas_answer(input)
  grandma_can_hear(input) ? "NO! NOT SINCE #{random_year}!" : "HUH?! SPEAK UP, SONNY!" 
end

deaf_grandma_chatter
