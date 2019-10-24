require_relative '../lib/game'
require_relative '../lib/player'
require_relative '../lib/board'
require_relative '../lib/display'


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
