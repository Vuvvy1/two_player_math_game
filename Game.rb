class Game
  def initialize(name)
    @name = name
    @p1 = Player.new("Hadley")
    @p2 = Player.new("Vuvvy")
  end

  def start
    puts "Game Started"
    puts showlives
  end

  def turn
    @p1.new_question
    @p2.new_question
    puts showlives
  end
  
  def showlives
    if @p1.lives == 0 && @p2.lives == 0
      puts "Both #{@p1.name} and #{@p2.name} are out of lives, its a tie!"
      puts '---------GAME-OVER--------'
    elsif @p1.lives == 0
      puts "#{@p1.name} is our of lives, #{@p2.name} wins!"
      puts '---------GAME-OVER--------'
    elsif @p2.lives == 0
      puts "#{@p2.name} is our of lives, #{@p1.name} wins!"
      puts '---------GAME-OVER--------'
    else puts "#{@p1.name} #{@p1.lives}/3 ########## #{@p2.name} #{@p2.lives}/3"
      puts '---------NEW-TURN---------'
      turn
    end
  end

end