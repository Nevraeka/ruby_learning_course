class AgeFromSeconds

  @@days_to_months_diff = 0.0328549112

  def initialize(seconds)
    @seconds = seconds
    @days    = years_and_days()[1]
    @years   = years_and_days()[0]
    puts "Your approximate age is #{@years} and #{days_to_months()} months"
  end

  def years_and_days
    (@seconds/60/60/24).divmod(365)
  end
  
  def days_to_months
    (@days * @@days_to_months_diff).to_i
  end

end

Ages = [979000000, 2158493738, 246144023, 1270166272, 1025600095]

Ages.each do | age |
  AgeFromSeconds.new(age)
end