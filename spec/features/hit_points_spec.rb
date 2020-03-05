require './app'

feature 'viewing hit points' do
  scenario 'can view opposing players hit points' do
    sign_in_and_play
    expect(page).to have_content 'Brian: 60HP'
  end

  scenario 'can view my hit points' do
    sign_in_and_play
    expect(page).to have_content 'Sophia: 60HP'
  end

  scenario 'can attack another player and reduce opponent HP by 10' do
    sign_in_and_play
    attack_and_ok
    expect(page).not_to have_content 'Brian: 60HP'
    expect(page).to have_content 'Brian: 50HP'
  end

  scenario 'opponent attacks me and my HP are reduced by 10' do
    sign_in_and_play
    attack_and_ok
    attack_and_ok
    expect(page).not_to have_content 'Sophia: 60HP'
    expect(page).to have_content 'Sophia: 50HP'
  end

  
end