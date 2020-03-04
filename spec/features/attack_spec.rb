require './app'

feature 'attacking another' do
  scenario 'can attack another player and get confirmation' do
    sign_in_and_play
    click_link 'Attack!'
    expect(page).to have_content 'Sophia attacked Brian'
  end

  scenario 'can attack another player and reduce opponent HP by 10' do
    sign_in_and_play
    click_link 'Attack!'
    click_link 'OK'
    expect(page).not_to have_content 'Brian: 60HP'
    expect(page).to have_content 'Brian: 50HP'
  end

end