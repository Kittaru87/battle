
feature 'entering names' do
  scenario 'can submit names of players' do
    sign_in_and_play
    expect(page).to have_content 'Sophia vs. Brian'
  end
end