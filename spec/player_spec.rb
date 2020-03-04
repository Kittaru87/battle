require 'player'

  describe Player do
    
    subject(:sophia) { Player.new('Sophia') }
    subject(:brian) { Player.new('Brian') }
    
    describe "#name" do
      it "should return the player's name" do
        expect(sophia.name).to eq 'Sophia'
      end
    end

    describe '#hit_points' do
      it 'returns the default hit points' do
        expect(sophia.hit_points).to eq described_class::DEFAULT_HP
      end
    end

    describe "#reduce_hp" do
      it "should reduce the opponent's HP by 10" do
        expect{Game.new(sophia, brian).attack(brian)}.to change {brian.hit_points}.by(-10)
      end

    end

  end
