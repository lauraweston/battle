
feature Battle, :type => :feature do
  scenario "User enters player name" do
    visit "/"

    fill_in "Player 1", with: "Laura"
    fill_in "Player 2", with: "Felix"
    click_button "Let's battle!"

    expect(page).to have_text("Laura vs Felix")
  end
end
