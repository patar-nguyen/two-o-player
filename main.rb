require './question'
require './player'

class Game

  attr_accessor :player

  def initialize
    @player = [Player.new(1), Player.new(2)]
  end

  def start
    turn = 1;
    
    puts "Welcome to the game"

    while player[0].life > 0 && player[1].life > 0 do
      
      question = Question.new
      puts "Player #{turn}: #{question.question}"
      answer = $stdin.gets.chomp.to_i

      if answer == question.answer
        puts "Player #{turn}: Yes! You are correct."
        puts "P1: #{player[0].life}/3 vs P2: #{player[1].life}/3"

      else
        puts "Player #{turn}: Incorrect answer."
        player[turn - 1].reduceLife
        puts "P1: #{player[0].life}/3 vs P2: #{player[1].life}/3"
      
      end

      turn == 1 ? turn = 2 : turn = 1;

      if player[0].life == 0 || player[1].life == 0

        puts "Player#{turn} wins with a score of #{player[turn - 1].life}/3"
        puts "----- GAME OVER -----"
        puts "Good bye!"

      else

        puts "----- NEW TURN -----"

      end
      
    end

  end

end

game = Game.new
game.start