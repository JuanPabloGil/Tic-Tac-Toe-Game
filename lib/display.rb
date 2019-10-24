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

  def whos_first(test_1=($p1.symbol), player_one=$p1.name, player_two=$p2.name)
    if test_1 == 'X'
      puts "#{player_one} go first"
    else
      puts "#{player_two} go first"
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
