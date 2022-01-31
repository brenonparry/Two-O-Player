class Game
  def initialize 

  end

  def start
    puts "Welcome! The game has started!"
    
    question = Question.new
    puts "#{question.new_turn}"
    
    

  end
end