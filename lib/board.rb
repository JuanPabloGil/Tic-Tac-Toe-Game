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

  def player_move(player, move, board, player_symbol=player.symbol)
    if $board[move - 1] != @symbol
      board[move - 1] = player_symbol
        if $new_board.check_winner($board, player, player_symbol)
          puts "#{player.name} WINS!"
        end
    end
    $turn_count += 1
  end

  def check_winner(board,player,player_symbol=player.symbol)

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
        count +=1 if board[position - 1] == player_symbol
      }
      win = true if count == 3
    }
    win
  end

end
