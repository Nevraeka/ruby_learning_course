# output example: The number of participants who did not attempt Quiz 1 is x out of y total participants. 
module Students
  class Quiz
    def initialize(num, name = "")
      @quiz_name   = name
      @quiz_number = num
    end

    def get_quiz_number
      @quiz_number
    end

    def get_quiz_name
      @quiz_name
    end

    def data
      [0,0,0,1,0,0,1,1,0,1]
    end

    def count 
      data.count
    end

    def quizzed
      select_taken = data.select { | item | item == 1 }
      select_taken.count
    end

    def unquizzed
      count - quizzed
    end
  end

  def self.report_quiz(quiz_num)
    quiz = Students::Quiz.new(quiz_num,"Quiz 1")
    "The number of participants who did not attempt #{quiz.get_quiz_name} is #{quiz.unquizzed} out of #{quiz.count} total participants."
  end
end

puts "Enter the number of the quiz you wish to check"
input = gets.strip.to_i
puts Students.report_quiz(1)
