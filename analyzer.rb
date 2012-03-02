module Text
  class Analyzer

    @@filter = {
      :lines          => "\n",
      :words          => " ",
      :sentences      => /(\.|\?|\!)/,
      :all_characters => /./,
      :characters     => /\S/,
      :paragraphs     => "\n\n"
    }

    def initialize(file_path)
      @file = file_path
    end
  
    def count(type)
      file = File.open(@file, "r")
      return file.read.scan(@@filter[:characters]).count if type == :characters
      file.read.split(@@filter[type]).size
    end  
  
    def all_chars
      count(:all_characters)
    end

    def chars
      count(:characters)
    end  
  
    def words
      count(:words)
    end
  
    def lines
      count(:lines)
    end

    def sentences
      count(:sentences)
    end

    def paragraphs
      count(:paragraphs)
    end

    def words_per_sentence
      (words / sentences)
    end

    def sentences_per_paragraph
      (sentences / paragraphs)
    end
  
    def report
      ["The file \"#{@file}\" has been analyzed:\n\n",
       "  * word count:                             #{words}\n",
       "  * sentence count:                         #{sentences}\n",
       "  * character count:                        #{all_chars}\n",
       "  * character count (excluding whitespace): #{chars}\n",
       "  * paragraph count:                        #{paragraphs}\n",
       "  * line count:                             #{lines}\n",
       "  * Average sentences per paragraph:        #{sentences_per_paragraph}\n",
       "  * Average words per sentence:             #{words_per_sentence}\n"].join("")
    end
  end
end

puts "Please enter a valid file path"

input = (gets.chomp != "" ? gets.chomp : "text.txt")
puts Text::Analyzer.new(input).report