class Temperature
  
  def initialize(temperature, init_scale)
    @temperature = temperature
    @scale = init_scale
  end

  def self.farenheit
    case @scale
      when "farenheit"
        degrees = @temperature
      when "celsius"
        degrees = (@temperature - 32) * 5/9
      when "kelvin"
        degrees = (@temperature + 459.67) * 5/9
      else
        raise "invalid scale used in initializer"
    end
    degrees
  end

  def self.celsius
    case @scale
      when "farenheit"
        degrees = @temperature * 9/5 + 32
      when "celsius"
        degrees = @temperature
      when "kelvin"
        degrees = @temperature + 273.15
      else
        raise "invalid scale used in initializer"
    end
    degrees
  end

  def self.kelvin
    case @scale
      when "farenheit"
        degrees = (@temperature * 9/5) - 459.67
      when "celsius"
        degrees = @temperature -32
      when "kelvin"
        degrees = @temperature
      else
        raise "invalid scale used in initializer"
    end
  end
end

# Usage Example

if __FILE__ == $0
  puts "Create a new Temperature Object:"
  puts ARGV.join(",")
  puts "Enter a temperature:"
  temperature = gets.chomp.to_i
  puts "Enter units from"
  units = gets.chomp
  puts "Enter units to"
  units_to = gets.chomp
  t = Temperature.new(temperature, units) 
  puts "#{t.method(units_to).call()} degrees in #{units_to}"
end