feature Battle, :type => :feature do
  scenario 'Players can see their hit points' do
    visit "/play"
    expect(page).to have_text(100)
  end

end
