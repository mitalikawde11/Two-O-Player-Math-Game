require './players'
require './questions.rb'

class Game
  def start_game
    puts "Welcome to Ruby Math Game!"
    p1 = Player.new("Player 1")
    p2 = Player.new("Player 2")

    count = 1

    while (p1.lives && p2.lives) > 0 do
      player = (count % 2 == 0) ? p2 : p1
      @question = Question.new
      puts "#{player.name}: #{@question.show_question}"
      print '> '
      answer = gets.chomp

      if @question.check_answer(answer) == false
        player.deduct_life
        puts "Seriously? No!"
      else
        puts "Correct! Switch Players."
      end
      
      puts "P1: #{p1.lives} / 3 vs P2: #{p2.lives} / 3"

      if (p1.lives > 0) && (p2.lives > 0)
        puts "----- NEW TURN -----"
      elsif count % 2 == 0 
        puts "Player 1 wins with a score of #{p1.lives} / 3"
        break
      else
        puts "Player 2 wins with a score of #{p2.lives} / 3"
        break
      end

      count = count + 1
    end

    puts "----- GAME OVER -----"
    puts "Good bye!"
  end

end