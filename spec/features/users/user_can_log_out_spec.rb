require 'rails_helper'
require 'support/omniauth_helper'

describe "Logged in user workflow" do
  context "as a logged in user" do
    scenario "I can logout of the app" do
      visit root_path
      stub_omniauth
      click_on("Sign in or Sign up with Facebook")

      expect(current_path).to eq('/')

      click_on("Sign out")

      expect(current_path).to eq(root_path)
      expect(page).to_not have_content("Signed in as Molly Brown!")
    end
  end
end
