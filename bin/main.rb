#!/usr/bin/env ruby
class Player

  attr_accessor :symbol

  def symbol=(symbol)
    @symbol = symbol
  end

  def symbol
    @symbol
  end

end

class Board

  $borad = %w[1 2 3 4 5 6 7 8 9]

  def board
    $board
  end

  def display_board
    puts " #{$board[0]} | #{$board[1]} | #{$board[2]} "
    puts "-----------------------------------------"
    puts " #{$board[3]} | #{$board[4]} | #{$board[5]} "
    puts "-----------------------------------------"
    puts " #{$board[6]} | #{$board[7]} | #{$board[8]} "
    puts "-----------------------------------------"
  end




end

class Display
  def instructions
    puts "1. Select a symbol  X or O (Must be uppercase)"
    puts "2. Every turn the players puts the sign X or O on board"
    puts "3. If the player gets 3 consequtive X or O then the player win"
  end

  def set_data
    puts "Choose your symbol: X or O"
    $p1.symbol = gets.chomp
    $p2.symbol = $p1.symbol == 'X' ? 'O':'X'
    puts "player 1: #{$p1.symbol}"
    puts "player 2: #{$p2.symbol}"
  end

  def whos_first
    if $p1.symbol == 'X'
      puts "player 1 go first"
    else
      puts "player 2 go first"
    end
    turn_count = 1
  end

  def turn

  end


end

def new_game
  $new_board = Board.new
  new_display = Display.new
  $p1 = Player.new
  $p2 = Player.new
  new_display.set_data
end

class Game
  new_game

end
$new_board=Board.new
Game.new

def play_again
  puts "Want to play again? Y / N"
  play_status = gets.chomp
  while play_status == "Y"
    new_game
  end
  puts "End of the Game "
end






