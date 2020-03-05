require './app.rb'

feature 'Switch turns' do

  context 'seeing the current turn' do
    scenario 'at the start of the game' do
      sign_in_and_play
      expect(page).to have_content "Sophia's turn"
    end

    scenario 'after the first go the current player switches' do
      sign_in_and_play
      click_link 'Attack!'
      click_link 'OK'
      expect(page).not_to have_content "Sophia's turn"
      expect(page).to have_content "Brian's turn"
    end
  end


end