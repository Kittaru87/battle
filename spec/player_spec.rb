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

    describe '#attack' do
      it 'damages the player' do
        expect(brian).to receive(:reduce_hp)
        sophia.attack(brian)
      end
    end

    describe "#reduce_hp" do
      it "should reduce the opponent's HP by 10" do
        expect{sophia.attack(brian)}.to change {brian.hit_points}.by(-10)
      end

    #   it "Should say game over when opponent's HP is 0" do
        
    # end

  end
