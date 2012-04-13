class GameBoard 
  
  def initialize
    @hits = 0
    @fire_count = 0
  end

  def check_yourself(user_guess)
    @fire_count += 1
    return "kill" if (@hits == 3 || @fire_count == @locations.length)
    if (@locations.include? user_guess.to_i )
      
    end
   end
   
  end
  
  def set_locations_cells(locations)
    @locations ||= locations
  end

end
