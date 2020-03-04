def sign_in_and_play
  visit ('/')
  fill_in :player_1_name, with: 'Sophia'
  fill_in :player_2_name, with: 'Brian'
  click_button 'Submit'
end