require 'player'

describe Player do
  describe '#name' do
    it 'returns its name' do
      player = Player.new('Dave')
      expect(player.name).to eq('Dave')
    end
  end

end
