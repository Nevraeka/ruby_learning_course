class GameBoard 
  
  def initialize
    @hits = 0
  end
  
  def check_yourself(user_guess)
    if @hits == 3
      return "Selected already. Chose again" if locations_have? user_guess
      "kill" 
    else
      puts target(user_guess)
    end
  end
  
  def set_locations_cells(locations)
    @locations ||= locations
  end

  private
  
  def hit(user_guess)
    @hits += 1
    "hit"
  end
  
  def locations_have?(user_guess)
    @locations.include? user_guess.to_i
  end
  
  def demolish(user_guess)
    @locations.delete user_guess
    hit user_guess
  end

  def target(user_guess)
    return demolish(user_guess) if locations_have? user_guess 
    "miss"
  end
end
