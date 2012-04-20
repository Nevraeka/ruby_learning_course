class GameBoard

  def initialize
    @hits = 0
  end
  
  def check_yourself(user_guess)
    target(user_guess)
  end
  
  def set_locations_cells(locations)
    @locations ||= locations
  end

  private
  
  def hit
    @hits += 1
    return (puts "hit"; "kill") if @hits == 3
    "hit"
  end

  def target(user_guess)
    return hit if (@locations.include? user_guess.to_i)
    "miss"
  end
end
