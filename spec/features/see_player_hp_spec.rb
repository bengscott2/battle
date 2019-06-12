
feature 'See players HP' do
  scenario 'Display Player 2 HP' do
    sign_in_to_play
    expect(page).to have_content 'Mittens HP: 100/100'
  end
end
