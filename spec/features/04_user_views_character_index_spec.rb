require 'spec_helper'

feature 'user visits character index', %Q{
  As a user
  I want to be able to view a list of my characters.
} do

  scenario 'while signed in a user views their character index page' do
    greg = FactoryBot.create(:user)
    human = FactoryBot.create(:race)
    paladin = FactoryBot.create(:character_class)
    birgir = Character.create(name: "Birgir the Slow", user_id: greg.id, race_id: human.id, character_class: paladin.name, level: 2)
    login_as(greg, :scope => :user)

    visit root_path
    click_link 'Characters'

    expect(page).to have_content('Birgir the Slow')
    expect(page).to have_content("#{birgir.race} #{birgir.class} 2")
  end
end
