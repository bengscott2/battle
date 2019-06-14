feature 'reduce HP after attack' do
  scenario 'player 1 attacks player 2 and reduces points' do
    sign_in_to_play
    click_button "Attack"
    expect(page).to have_content 'Mittens HP: 90/100'
  end
end
