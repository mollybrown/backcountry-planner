require 'rails_helper'
require 'support/omniauth_helper'

describe "Guest signup workflow" do
  before(:each) do
    stub_omniauth
  end

  context "An unregisted guest" do
   scenario "can visit the app home page" do
      visit root_path

      expect(current_path).to eq('/')
      expect(page).to have_content("Weekend Warrior")
      expect(page).to have_link("Sign in or Sign up with Facebook")
    end

    scenario "can signup for the app via Facebook" do
      visit root_path

      click_on("Sign in or Sign up with Facebook")

      expect(current_path).to eq('/dashboard')
      expect(page).to have_content("Weekend Warrior")
      expect(page).to have_content("Signed in as Molly Brown!")
      expect(page).to have_content("Sign out")
     end
  end
end
