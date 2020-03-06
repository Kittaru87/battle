
feature 'Game over' do

  context 'when Player 1 reaches 0 HP first' do
    before do
      sign_in_and_play
      attack_and_ok
    end

    scenario 'Player 1 loses' do
      click_link 'Attack'
      allow(Kernel).to receive(:rand).and_return(60)
      click_link 'Game over'
      expect(page).to have_content 'Sophia loses!'
    end
  end
end