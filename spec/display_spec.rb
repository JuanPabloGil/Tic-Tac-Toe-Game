require_relative '../lib/board'
require_relative '../lib/player'
require_relative '../lib/display'

RSpec.describe Display do



  describe '#instructions' do
    it 'Check if we have the correct instructions' do
      expect do
        Display.new.instructions()
      end.not_to output('').to_stdout
      require_relative '../lib/display'
    end
  end
end
