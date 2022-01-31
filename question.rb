class Question
  def initialize

  end

  def new_turn
   

    puts "------ NEW TURN ------"
    random_number1 = rand(1..10)
    random_number2 = rand(1..10)
    correct_answer = random_number1 + random_number1
    puts "Player1: What is #{random_number1} + #{random_number2}?"
    print "> "
    gets.chomp.to_i

    
    
    unless gets.chomp.to_i == correct_answer
      puts "Wrong answer ya bish"
    end
    if gets.chomp.to_i == correct_answer
      puts "Ayyyyy dats right"
    end
  end
end