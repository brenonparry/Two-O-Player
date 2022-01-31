require './question'
require './player'
class Game
  attr_accessor :player1, :player2, :current_player
  def initialize
    @player1 = Player.new("P1")
    @player2 = Player.new("P2")
    @current_player = @player1
    @counter = 1
  end

  def switch_player
    @counter += 1
    
    if @counter % 2 == 0
      @current_player = @player2
    else
      @current_player = @player1
    end

  end

  def play
    q = Question.new
      puts "------ NEW TURN ------"
      puts "+++++++++++#{@counter}+++++++++++++"
      puts "#{@current_player.name}: What is #{q.random_number1} + #{q.random_number2}?"
     
      player_answer = gets.chomp.to_i
      check_answer(q.correct_answer, player_answer)

  end
  
  def check_answer(correct_answer, player_answer)
    
    if player_answer == correct_answer
      puts "CORRECT!"
      puts "#{@player1.name}'s lives: #{@player1.lives}/3 vs #{@player2.name}'s lives: #{@player2.lives}/3"
      
    else
      puts "WRONG!"
      @current_player.reduce_life
      puts "#{@player1.name}'s lives: #{@player1.lives}/3 vs #{@player2.name}'s lives: #{@player2.lives}/3"
    end

    switch_player()
    
  end

  
  def start
    puts "Welcome! The game has started!"
    
    while @player1.lives > 0 || @player2.lives > 0 do
      play()
    end

    switch_player()
    puts "#{@current_player.name} is the winner!"
    puts "------ GAME OVER ------"

  end

end