require 'game'

describe Game do
  describe '#Attack' do
    it 'calls receive_damage on player 2' do
      player2 = double 'Player', receive_damage: 'Ouch'
      expect(player2).to receive :receive_damage
      subject.attack(player2)
    end
  end
end
