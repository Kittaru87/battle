require 'game'

describe Game do

  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  it "initializes with Player 1" do
    expect(subject).to have_attributes(current_turn: player_1)
  end
  
  describe "#player_1" do
    it "returns player 1" do
      expect(game.player_1).to eq player_1
    end
  end

  describe "#player_2" do
    it "returns player 2" do
      expect(game.player_2).to eq player_2
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(player_2).to receive(:reduce_hp)
      game.attack(player_2)
    end
  end

  describe "#switch_turns" do
    it 'switches the current player once attack has been made' do
      game.switch_turns
      expect(game.current_turn).to eq player_2
    end
  end
    # it "Should say game over when opponent's HP is 0" do
    #   5.times {game.attack(player_2)}
    #   expect{game.attack(player_2)}.to raise_error{'Player 2 has been defeated'}
    # end

end