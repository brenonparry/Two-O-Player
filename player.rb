class Player
  attr_accessor :lives, :name
  
  def initialize lives = 3, name
    @lives = lives
    @name = name
  end


  def reduce_life
    @lives -= 1
  end

end