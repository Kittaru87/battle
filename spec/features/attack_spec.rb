require './app'

feature 'attacking another' do
  scenario 'can attack another player and get confirmation' do
    sign_in_and_play
    click_link 'Attack!'
    expect(page).to have_content 'Sophia attacked Brian'
  end

  scenario 'opponent attacks you and you get confirmation' do
    sign_in_and_play
    attack_and_ok
    click_link 'Attack!'
    expect(page).to have_content 'Brian attacked Sophia'
  end

end