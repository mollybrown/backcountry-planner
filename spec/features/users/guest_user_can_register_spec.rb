require 'rails_helper'

OmniAuth.config.test_mode = true
OmniAuth.config.mock_auth[:facebook] = OmniAuth::AuthHash.new({
        provider: 'facebook',
        uid: '123545',
        info: {
          name:  "Molly Brown",
          email: "test@example.com",
          image: "www.image.jpg"
        },
        credentials: {
          token: "123456",
          expires_at: Time.now + 1.week
        }
      })

describe "Guest signup workflow" do
  before(:each) do
    Rails.application.env_config["omniauth.auth"] = OmniAuth.config.mock_auth[:facebook]
  end

  context "An unregisted guest" do
   scenario "can visit the app home page" do
      visit root_path

      expect(current_path).to eq('/')
      expect(page).to have_content("Weekend Warrior")
      expect(page).to have_link("Sign in with Facebook")
    end

    scenario "can signup via facebook" do
      visit root_path

      click_on("Sign in with Facebook")

      expect(current_path).to eq('/')
      expect(page).to have_content("Weekend Warrior")
      expect(page).to have_content("Signed in as Molly Brown!")
      expect(page).to have_content("Sign out")
     end
  end
end
