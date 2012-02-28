puts "Please chat with Grandma Ruby."

def deaf_grandma_chatter 
  random_recollection = (1930..1951).to_a
  loop do
    puts "\>"
    input = gets.chomp
    break if input == "bye".upcase
    if (input != input.upcase || input == "")
      puts "HUH?! SPEAK UP, SONNY!"
    else
      puts "NO! NOT SINCE #{random_recollection[rand(random_recollection.size)]}!"
    end 
  end
end

deaf_grandma_chatter
