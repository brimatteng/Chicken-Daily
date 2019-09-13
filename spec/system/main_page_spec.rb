require "rails_helper"

RSpec.describe "Main Page", type: :system do
  before do
    driven_by(:rack_test)
  end

  it "renders our welcome message" do
    visit "/"
    expect(page).to have_text("Welcome to the Main Page")
  end
end
