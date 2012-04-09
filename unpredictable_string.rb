class UnpredictableString < String
  def initialize(str)
    @str = str
  end
  def scramble
    @str.scan(/./).shuffle.join("")
  end
end
if __FILE__ == $0
  puts "Enter a message you wish to scramble: >"
  unpredictable_string = UnpredictableString.new(gets.chomp)
  puts unpredictable_string.scramble
end
