require './game'

class Question
  attr_reader :random_number1, :random_number2, :correct_answer
  def initialize
    @random_number1 = rand(1..20)
    @random_number2 = rand(1..20)
    @correct_answer = @random_number1 + @random_number2
    # puts "Player1: What is #{@random_number1} + #{@random_number2}?"
    # puts "+++++++++++++++++"
    # puts @correct_answer
  end


  # def new_turn
   
  #   puts "------ NEW TURN ------"
  #   puts "Player1: What is #{random_number1} + #{random_number2}?"
  #   print "> " 
  #   player_answer = gets.chomp.to_i
  

  #   unless player_answer == correct_answer
  #     puts "Wrong answer ya bish"
  #   end
  #   if player_answer == correct_answer
  #     puts "Ayyyyy dats right"
  #   end
  # end
end