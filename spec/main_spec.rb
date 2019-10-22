require "./bin/main.rb"

RSpec.describe Player do

  describe "#name" do
    it "Tha name its on range?" do
      player = Player.new
      expect(player.name).to eql(@name)
    end
  end

  describe "#symbol" do
    it "The symbol its on range ?" do
      player = Player.new
      expect(player.symbol).to eql(@symbol)
    end
  end
end


RSpec.describe Board do
  let(:test_board) {%w[1 2 3 4 5 6 7 8 9]}
  let(:test_board_win_1) {%w[X X X O O 6 7 8 9]}
  #let(:test_player_symbol) {"X"}

  describe "#board" do
    it "Board length"do
      board = Board.new
      expect(board.board.length).to eql(9)
    end
  end

  describe "#check_winner" do
    it "check if the combination 1 its a win "do
      board = Board.new
      expect(board.check_winner(test_board_win_1,$p1)).to eql(true)
    end
  end
end
