RSpec.describe Player do

  let(:test_1){"X"}
  let(:test_2){"O"}
  let(:test_player_one_name){"Player 1"}
  let(:test_player_two_name){"Player 2"}

  describe '#name' do
    it 'Check if name its equal to nil' do
      player = Player.new
      expect(player.name()).to eql(nil)
    end
  end

  describe '#symbol' do
    it 'Check if the symbol its equal to nil' do
      player = Player.new
      expect(player.symbol()).to eql(nil)
    end
  end

end
