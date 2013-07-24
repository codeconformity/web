OmniAuth.config.test_mode = true
OmniAuth.config.mock_auth[:github] = OmniAuth::AuthHash.new({
    provider: 'github',
    uid: '12345',
    info: {
      email: 'johndoe@example.com',
      nickname: 'johndoe',
      first_name: 'John',
      last_name: 'Doe',
      name: 'John Doe'
    }
  })
