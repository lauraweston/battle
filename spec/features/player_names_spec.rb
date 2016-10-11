
feature Battle, :type => :feature do
  scenario "User enters player name" do
    visit "/"

    fill_in "Player name", with: "Laura"
    click_button "Let's battle!"

    expect(page).to have_text("Laura")
  end
end
