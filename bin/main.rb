#!/usr/bin/env ruby

def instructions
  puts "1. Select a symbol  X or O (Must be uppercase)"
  puts "2. Every turn the players puts the sign X or O on board"
  puts "3. If the player gets 3 consequtive X or O then the player win"
end

class Player

  @turn_x = true
  @turn_o = false

  def player_choose(player_1)
    if player_1 == 'X' or player_1 == 'O'
      if player_1 == 'X'
        player_2='O'
      else
        player_2='X'
      end
      puts "player 1 will be #{player_1} and player 2 will be #{player_2}"
    else
      puts "Wrong symbol choosen"
    end
  end

  def turns(turn_x)
    if turn_x == true
      puts "Turn of X, Please select a place on the board"
    else
      puts "Turn of O, Please select a place on the board"
    end
  end

  def next_turn(player_1)
    if turn_x == false
      turn_x = true
      turn_o = false
    else
      turn_x = false
      turn_o = true
    end
  end


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
