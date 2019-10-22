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
  let(:test_board_win_1) {%w[X X X 4 5 6 7 8 9]}
  let(:test_board_win_2) {%w[1 2 3 X X X 7 8 9]}
  let(:test_board_win_3) {%w[1 2 3 4 5 6 X X X]}
  let(:test_board_win_4) {%w[X 2 3 X 5 6 X 8 9]}
  let(:test_board_win_5) {%w[1 X 3 4 X 6 7 X 9]}
  let(:test_board_win_6) {%w[1 2 X 4 5 X 7 8 X]}
  let(:test_board_win_7) {%w[X 2 3 4 X 6 7 8 X]}
  let(:test_board_win_8) {%w[1 2 X 4 X 6 X 8 9]}
  let(:test_board_win_1_o) {%w[O O O 4 5 6 7 8 9]}
  let(:test_board_win_2_o) {%w[1 2 3 O O O 7 8 9]}
  let(:test_board_win_3_o) {%w[1 2 3 4 5 6 O O O]}
  let(:test_board_win_4_o) {%w[O 2 3 O 5 6 O 8 9]}
  let(:test_board_win_5_o) {%w[1 O 3 4 O 6 7 O 9]}
  let(:test_board_win_6_o) {%w[1 2 O 4 5 O 7 8 O]}
  let(:test_board_win_7_o) {%w[O 2 3 4 O 6 7 8 O]}
  let(:test_board_win_8_o) {%w[1 2 O 4 O 6 O 8 9]}
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

  describe "#check_winner" do
    it "check if the combination 2 its a win "do
      board = Board.new
      expect(board.check_winner(test_board_win_2,$p1)).to eql(true)
    end
  end

  describe "#check_winner" do
    it "check if the combination 3 its a win "do
      board = Board.new
      expect(board.check_winner(test_board_win_3,$p1)).to eql(true)
    end
  end

  describe "#check_winner" do
    it "check if the combination 4 its a win "do
      board = Board.new
      expect(board.check_winner(test_board_win_4,$p1)).to eql(true)
    end
  end

  describe "#check_winner" do
    it "check if the combination 5 its a win "do
      board = Board.new
      expect(board.check_winner(test_board_win_5,$p1)).to eql(true)
    end
  end

  describe "#check_winner" do
    it "check if the combination 6 its a win "do
      board = Board.new
      expect(board.check_winner(test_board_win_6,$p1)).to eql(true)
    end
  end

  describe "#check_winner" do
    it "check if the combination 7 its a win "do
      board = Board.new
      expect(board.check_winner(test_board_win_7,$p1)).to eql(true)
    end
  end

  describe "#check_winner" do
    it "check if the combination 8 its a win "do
      board = Board.new
      expect(board.check_winner(test_board_win_8,$p1)).to eql(true)
    end
  end

  describe "#check_winner" do
    it "check if the combination 1 for the O's its a win "do
      board = Board.new
      expect(board.check_winner(test_board_win_1_o,$p2)).to eql(true)
    end
  end

  describe "#check_winner" do
    it "check if the combination 2 for the O's its a win "do
      board = Board.new
      expect(board.check_winner(test_board_win_2_o,$p2)).to eql(true)
    end
  end

  describe "#check_winner" do
    it "check if the combination 3 for the O's its a win "do
      board = Board.new
      expect(board.check_winner(test_board_win_3_o,$p2)).to eql(true)
    end
  end

  describe "#check_winner" do
    it "check if the combination 4 for the O's its a win "do
      board = Board.new
      expect(board.check_winner(test_board_win_4_o,$p2)).to eql(true)
    end
  end

  describe "#check_winner" do
    it "check if the combination 5 for the O's its a win "do
      board = Board.new
      expect(board.check_winner(test_board_win_5_o,$p2)).to eql(true)
    end
  end

  describe "#check_winner" do
    it "check if the combination 6 for the O's its a win "do
      board = Board.new
      expect(board.check_winner(test_board_win_6_o,$p2)).to eql(true)
    end
  end

  describe "#check_winner" do
    it "check if the combination 7 for the O's its a win "do
      board = Board.new
      expect(board.check_winner(test_board_win_7_o,$p2)).to eql(true)
    end
  end

  describe "#check_winner" do
    it "check if the combination 8 for the O's its a win "do
      board = Board.new
      expect(board.check_winner(test_board_win_8_o,$p2)).to eql(true)
    end
  end

end
