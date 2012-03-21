=begin
doctest: By default hello returns "Hello World!"
>> hello
=> "Hello World!"
doctest: I can say hello by name
>> hello "Erik"
=> "Hello Erik!"
doctest: I can ask a question by adding "?" to the name
>> hello "Victor", "?"
=> "Hello Victor?"
=end

def hello(name = "World", punctuation = "!")
  "Hello #{name}#{punctuation}"  
end
