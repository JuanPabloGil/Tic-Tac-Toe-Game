#!/usr/bin/env ruby

def instructions
  puts "1. Select a symbol  X or O (Must be uppercase)"
  puts "2. Every turn the players puts the sign X or O on board"
  puts "3. If the player gets 3 consequtive X or O then the player win"
end

class Player

  attr_accessor :symbol
  def symbol(symbol)
    @symbol=symbol
  end


end

  def board




  end


  def moves

  end




play_again = 0


    instructions

    puts "player_one what do you choose: X or O"
    player_1 = gets.chomp
    player_choose(player_1)

    turns(player_1)




    puts "Want to play again? Y / N"
    play_status = gets.chomp
    if play_status == 'Y' or play_status == 'N'
      if play_status  == 'Y'
        play_again = 0
      else
        play_again = 1
      end
    else
      puts "Wrong Letter"
      play_again = 1
    end




  puts "game end"
