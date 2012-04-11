class GameBoard 
  
  def initialize
    @hits = 3
  end

  def check_yourself(user_guess)
    return "kill" if @hits == 0
    @hits -= 1 if (@locations.include? user_guess.to_i )
   end
   
  end
  
  def set_locations_cells(locations)
    @locations ||= locations
  end

end
