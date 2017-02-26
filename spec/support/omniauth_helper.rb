def stub_omniauth
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
end
