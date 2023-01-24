class Player
  attr_accessor :name, :lives
  def initialize(name)
    @name = name
    @lives = 3
  end
  
  def new_question
    question = Math_q.new
    question.ask
    print "> "
    answ = $stdin.gets.chomp
    if question.is_right(answ.to_i)
      puts "Correct, #{question.correct}!"
    else puts "Incorrect, #{question.correct} not #{answ}!"
      @lives -= 1
    end
  end

end