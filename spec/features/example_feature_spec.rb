require 'spec_helper'

feature "User views the index page" do
  scenario "user sees the correct title" do
    visit '/'

    expect(page).to have_content "JugoFutbol"
  end
end

feature "User views the meetup page" do
  scenario "user sees the meetup title, description and location" do
    visit '/show/1'

    expect(page).to have_content "JugoFutbol"
    expect(page).to have_content "Pick up soccer games"
    expect(page).to have_content "Boston"
  end
end
