#!/usr/bin/env ruby
class Player
  attr_accessor :name, :symbol

  def name=(name)
    @name = name
  end

  def symbol=(symbol)
    @symbol = symbol
  end

  def symbol
    @symbol
  end

  def name
    @name
  end

end

class Board
  $board = %W[1 2 3 4 5 6 7 8 9]

  def board
    $board
  end

  def display_board
    puts " #{$board[0]} | #{$board[1]} | #{$board[2]} "
    puts '-----------'
    puts " #{$board[3]} | #{$board[4]} | #{$board[5]} "
    puts '-----------'
    puts " #{$board[6]} | #{$board[7]} | #{$board[8]} "
    puts '-----------'
  end

  def player_move(player,move,board)
    if $board[move - 1] != @symbol
      board[move - 1] = player.symbol
      $new_board.check_winner($board, player)
        if $new_board.check_winner($board, player)
          puts "#{player.name} WINS!"
        end
    end
    $turn_count += 1
  end

  def check_winner(board,player)
    # In this part we are going to check if the player wins or draw
    win_cond = [
      [1,2,3],[4,5,6],[7,8,9],
      [1,4,7],[2,5,8],[3,6,9],
      [1,5,9],[3,5,7]
    ]
    win = false
    win_cond.each {|condition|
      count = 0
      condition.each {|position|
        count +=1 if board[position - 1] == player.symbol
      }
      win = true if count == 3
    }
    win
  end

end


class Display
  def instructions
    puts '1. Select a symbol  X or O '
    puts '2. Every turn the players puts the sign X or O on board'
    puts '3. If the player gets 3 consequtive X or O then the player win'
  end

  def set_data
    player_one = ''
    puts "Player 1, What's your name ? "
    $p1.name = gets.chomp
    puts "\n"
    puts 'Choose your symbol: X or O'
    player_one = gets.chomp.upcase
    while  player_one !='X' && player_one !='O'
      puts 'Error, please choose one of the correct symbols: X or O'
      player_one = gets.chomp.upcase
    end
    $p1.symbol = player_one
    $p2.symbol = $p1.symbol == 'X'   ? 'O' : 'X'
    puts "#{$p1.name}'s symbol is : #{$p1.symbol}"
    puts "\n"
    puts "Player 2, What's you name ? "
    $p2.name = gets.chomp
    puts "\n"
    puts "#{$p2.name}'s symbol is #{$p2.symbol}"
    puts "\n"

  end

  def whos_first
    if $p1.symbol == 'X'
      puts "#{$p1.name} go first"
    else
      puts "#{$p2.name} go first"
      $turn_count = 1
    end
    puts "\n"
  end

  def turn

    puts "Its #{$whos_turn.name}'s turn"
    puts "Give me a number of available square to hit"
    j = gets.chomp.to_i
    target = true

    while $arr.include?(j)
        puts('Error pick another value in the board')
        j = gets.chomp.to_i
    end

    ## check the range
    while(target == true)
      if j > 0 && j <= 9
        $arr << (j)
        target=false
        $new_board.player_move($whos_turn, j, $board)
        $new_board.display_board
      else
        puts 'Error you need to put on an available place'
        puts 'Give me a number of available square to hit:'
        j = gets.chomp.to_i
      end
    end
  end
end

def reset_game
  $arr = []
  $new_board = Board.new
  new_display = Display.new
  new_display.instructions
  $p1 = Player.new
  $p2 = Player.new
  new_display.set_data
  $turn_count = 0
  $whos_turn = $turn_count % 2 == 0 ? $p1 : $p2
  new_display.whos_first
  $new_board.display_board
  count_2 = 1
  while !$new_board.check_winner($board, $whos_turn) or count_2 == 11
    count_2 += 1
    if count_2 >= 11
      puts 'Its a draw'
      break
    end
    $whos_turn = $turn_count % 2 == 0 ? $p1 : $p2
    new_display.turn
  end
end

class Game
  reset_game
  puts 'Another round ? Y / N'
  answer = gets.chomp.upcase
  while answer == 'Y'
    $board = %W[1 2 3 4 5 6 7 8 9]
    reset_game
  end

  puts "THANK YOU FOR PLAYING"
end


Game.new
