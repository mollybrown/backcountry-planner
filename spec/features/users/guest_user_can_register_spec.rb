require 'rails_helper'

describe "Guest login workflow" do
  context "An unregisted guest" do
   scenario "can visit the app home page" do
      visit root_path

      expect(current_path).to eq('/')
      expect(page).to have_content("Backcountry Explorer")
    end
  end
end
