class Question
  def initialize
    @first_number = rand(1..20)
    @second_number = rand(1..20)
    @correct_answer = @first_number + @second_number
  end

  def show_question
    puts "What does #{@first_number} plus #{@second_number} equal?"
  end

  def check_answer(answer)
    if @correct_answer == answer.to_i
      return true
    else
      return false
    end
  end

end
