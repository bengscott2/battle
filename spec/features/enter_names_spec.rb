feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_to_play
    expect(page).to have_content "Dave", "Mittens"
  end
end
