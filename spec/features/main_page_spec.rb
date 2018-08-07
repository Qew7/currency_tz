require "rails_helper"

RSpec.feature "Main page", type: :feature do
  scenario "User opens main page" do
    visit "/"

    expect(page).to have_text("Доллар можно купить за")
    expect(page).to have_css("div.card.text-center")
    expect(page).to have_css("div.card-body")
  end

  scenario "User opens admin page" do
    visit "/admin"

    expect(page).to have_text("Представленый курс покупки доллара")
    expect(page).to have_css("div.card.text-center")
    expect(page).to have_css("div.card-body")

    expect(page).to have_css("form")
  end
end