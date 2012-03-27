module Wheatstone
  
  module Encode
    def self.reduce_chars(text)
      text.gsub!(/[^A-Z]/, "")
    end

    def self.jsub(text)
      text.gsub!(/[J]/,"I") 
    end

    def self.digraph(text)
      text.scan(/.{1,2}/)
    end

    def self.couple(text)
      puts text[-1]
      text[-1] = "#{text[-1]}X" if text[-1].length == 1
      text.join("")
    end
    
    def self.double_letters(text)
      prev_char = nil
      x_set = false
      ind = -1
      text.each_char do | ch |
        ind = ind + 1
	if ch == prev_char && !x_set
	  text.insert(ind, "X")
	  x_set = true
	  ind = ind + 1
	elsif ch == prev_char && x_set
	  text.insert(ind, "Z")
	  x_set = false
	  ind = ind + 1
	end
        prev_char = ch
      end
      text
    end

    def prepare(text)
      prep_str   = text.upcase
      reduced    = reduce_chars(prep_str)
      jsubbed    = jsub(reduced)
      doubles    = double_letters(jsubbed)
      digraph    = digraph(doubles)
      final_text = couple(digraph)
      final_text
    end
  end
end
