feature 'Attack players' do
  scenario 'attack player 2' do
    sign_in_to_play
    click_button "Attack"
    expect(page).to have_content 'HIT!'
  end
end
