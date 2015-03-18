require 'spec_helper'

feature "User views the index page" do
  scenario "user sees the correct title and alphabetically sorted" do
    visit '/'

    expect(page.find('.row:nth-child(1)')).to have_content 'Book club'
    expect(page.find('.row:nth-child(2)')).to have_content 'Dummy'
    expect(page.find('.row:nth-child(3)')).to have_content 'Hapa Hapa'
    expect(page.find('.row:nth-child(4)')).to have_content 'Heyyy'
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

feature "User wants to join a meetup" do
  scenario "user visits meetup page, clicks button to join and successfully joins the group" do
    visit '/'
    click_link "Sign in"
    visit '/show/9'
    click_link('Join')

    expect(page).to have_content "You joined the group!"
  end
end
