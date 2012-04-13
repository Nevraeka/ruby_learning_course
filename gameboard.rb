class GameBoard 
  
  def initialize
<<<<<<< HEAD
<<<<<<< HEAD
    @hits = 0
=======
    @hits = 3
>>>>>>> parent of 9d92ba0... updating gameboard. still have pending duplicate entry bug to fix
=======
    @hits = 3
>>>>>>> parent of 9d92ba0... updating gameboard. still have pending duplicate entry bug to fix
  end
  
  def check_yourself(user_guess)
<<<<<<< HEAD
<<<<<<< HEAD
    if @hits == 3
      return "Selected already. Chose again" if locations_have? user_guess
      "kill" 
    else
      puts target(user_guess)
    end 
=======
=======
>>>>>>> parent of 9d92ba0... updating gameboard. still have pending duplicate entry bug to fix
    return "kill" if @hits == 0
    @hits -= 1 if (@locations.include? user_guess.to_i )
   end
   
>>>>>>> parent of 9d92ba0... updating gameboard. still have pending duplicate entry bug to fix
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
