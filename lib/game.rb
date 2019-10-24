require_relative '../bin/main'

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
