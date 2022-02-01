require './question'
require './player'
class Game
  attr_accessor :player1, :player2, :current_player
  def initialize
    @player1 = Player.new("x")
    @player2 = Player.new("x")
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

  def set_players
    puts "Player 1, enter your name:"
    print "> "
    @player1.name = gets.chomp
    puts "Player 2, enter your name:"
    print "> "
    @player2.name = gets.chomp
    puts ""
  end

  def play
    q = Question.new
    puts "------------------ NEW TURN ------------------"
    puts "#{@current_player.name}: What is #{q.random_number1} + #{q.random_number2}?"
    print "> "
    player_answer = gets.chomp.to_i
    check_answer(q.correct_answer, player_answer)

  end
  
  def check_answer(correct_answer, player_answer)
    
    if player_answer == correct_answer
      puts "CORRECT! You're a genius!!!"
      puts ""
      puts "***#{@player1.name}'s lives: #{@player1.lives}/3 vs #{@player2.name}'s lives: #{@player2.lives}/3***"
      puts ""
      
    else
      puts "Are you serious #{@current_player.name}?? WRONG!"
      puts ""
      @current_player.reduce_life
      puts "***#{@player1.name}'s lives: #{@player1.lives}/3 vs #{@player2.name}'s lives: #{@player2.lives}/3***"
    end

    switch_player
    
  end

  
  def start
    puts "                ------ WELCOME! ------"
    puts "The game is about to begin! Lets get to know you first."
    puts ""
    set_players
    
    while ((@player1.lives > 0) || (@player2.lives > 0)) do
      play
      if @current_player.lives == 0
        break
      end
    end

    switch_player
    puts "#{@current_player.name} is the winner!"
    puts "                ------ GAME OVER ------"

  end
end