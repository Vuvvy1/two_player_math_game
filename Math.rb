class Math_q
  attr_accessor :num1, :num2, :answer
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = @num1 + @num2
  end

  def ask
    puts "what is #{@num1} + #{@num2}?"
  end

  def is_right(answer)
    answer == @answer
  end

  def correct
    "#{@num1} + #{@num2} = #{@answer}"
  end

end