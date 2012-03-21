#watcher gem or snarl
module Chat
  class WithGrandma

    def initialize(start_chat_msg)
      @bye_count = 0
      @random_recollection = (1930..1951).to_a
      @grandma_heard = ["WHY?!!", "SIGH?!", "CRY?!!"]
      @start_msg = start_chat_msg
      converse_with_your_grandma
    end

    def start_talking_to_grandma_you_brats
      "#{@start_msg}"
    end

    def grandmas_frustrating_response(input)
	@bye_count = 0
        (input == input.upcase) && (input != "") ? "NO! NOT SINCE #{@random_recollection[rand(@random_recollection.size - 1)]}!" : "HUH?! SPEAK UP, SONNY!"
    end

    def this_is_goodbye?(input)
      input.upcase == "BYE"
    end

    def how_many_times_have_we_said_goodbye_deary?(input)
      (@bye_count += 1) if this_is_goodbye?(input)
      if its_time_for_tea_and_crumpets
        puts "OH...OKAY SONNY! BYE!!!"
      else
	puts @grandma_heard[rand(@grandma_heard.size - 1)]
      end
    end

    def its_time_for_tea_and_crumpets
      @bye_count == 3
    end

    def converse_with_your_grandma
      puts start_talking_to_grandma_you_brats
       begin
	you_say = gets.chomp
	if this_is_goodbye?(you_say)
          how_many_times_have_we_said_goodbye_deary?(you_say)
	  break if its_time_for_tea_and_crumpets
        else
          puts grandmas_frustrating_response(you_say)
	end
      end until its_time_for_tea_and_crumpets
    end
  end
  def self.you_ungrateful_grandkids(msg = "Please chat with your Grandma Ruby....")
    Chat::WithGrandma.new(msg)
  end
end

Chat.you_ungrateful_grandkids

