# testgameboard.rb
require './gameboard'
 
# track how many guesses the user makes
no_of_guesses = 0
 
# instantiate a GameBoard object
gb = GameBoard.new
 
# make a random number for the first cell,
# and use it to make the cell locations array
random_no = rand(5)
 
# make an array for the location of the 3
# consecutive integers out of a possible 7
locations = [random_no, random_no + 1, random_no + 2]
 
# invoke the setter method of the GameBoard
gb.set_locations_cells(locations)
 
# variable to track if the game is alive
is_alive = true
 
while is_alive
  puts 'Enter a number: '
  STDOUT.flush
  user_guess = gets.chomp
  # invoke the check_yourself method on the GameBoard object
  result = gb.check_yourself(user_guess)
  no_of_guesses += 1
  if (result != 'kill')
    puts result 
  else
    is_alive = false
    puts "You took #{no_of_guesses} guesses"
  end
end
