#!/usr/bin/env ruby

def instructions
  puts "1. Select a symbol  X or O (Must be uppercase)"
  puts "2. Every turn the players puts the sign X or O on board"
  puts "3. If the player gets 3 consequtive X or O then the player win"
end



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



while play_again == 0
    instructions
    puts "player_one what do you choose: X or O"
    player_1 = gets.chomp
    player_choose(player_1)



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

  end


  puts "game end"
