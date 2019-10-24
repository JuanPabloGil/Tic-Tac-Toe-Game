require_relative '../lib/board'
require_relative '../lib/player'
require_relative '../lib/display'

RSpec.describe Display do

  let(:test_1){"X"}
  let(:test_player_one_name){"SA"}
  let(:test_player_two_name){"aaaaaa"}
  describe '#instructions' do
    it 'Check if we have the correct instructions' do
      expect do
        Display.new.instructions()
      end.not_to output('').to_stdout
      require_relative '../lib/display'
    end
  end

  describe'#whos_first' do
    it 'Check who plays first' do
      expect do
        Display.new.whos_first(test_1, test_player_one_name, test_player_two_name)
      end.not_to output("SA go first").to_stdout
    end
  end




end
