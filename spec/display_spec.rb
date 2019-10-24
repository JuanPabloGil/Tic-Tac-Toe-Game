require_relative '../lib/board'
require_relative '../lib/player'
require_relative '../lib/display'

RSpec.describe Display do

  let(:test_1){"X"}
  let(:test_2){"O"}
  let(:test_player_one_name){"Player 1"}
  let(:test_player_two_name){"Player 2"}
  describe '#instructions' do
    it 'Check if we have the correct instructions' do
      expect do
        Display.new.instructions()
      end.not_to output('').to_stdout
      require_relative '../lib/display'
    end
  end

  describe'#whos_first' do
    it 'Check if player one go first' do
      expect do
        Display.new.whos_first(test_1, test_player_one_name, test_player_two_name)
      end.not_to output("Player 1 go first").to_stdout
    end
  end

  describe'#whos_first' do
    it 'Check if player two go first' do
      expect do
        Display.new.whos_first(test_2, test_player_one_name, test_player_two_name)
      end.not_to output("Player 2 go first").to_stdout
    end
  end

end
