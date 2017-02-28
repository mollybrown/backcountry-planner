require 'rails_helper'
require 'support/omniauth_helper'

describe "Logged in user workflow" do
  context "as a logged in user" do
    scenario "I can logout of the app" do
      stub_omniauth
      visit root_path

      click_on("Sign in or Sign up with Facebook")

      expect(current_path).to eq('/dashboard')

      click_on("Sign out")

      expect(current_path).to eq('/')
      expect(page).to_not have_content("Signed in as Molly Brown!")
      expect(page).to have_link("Sign in or Sign up with Facebook")
    end
  end
end
