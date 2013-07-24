module AuthenticationHelpers
  def current_user
    @current_user
  end

  def current_user=(user)
    @current_user = user
  end

  # def create_user(username, password)
  #   User.create!(
  #     email: username, password: password, password_confirmation: password,
  #     first_name: 'First name', last_name: 'Last name'
  #   )
  # end
  #
  # def login_as(username, password)
  #   visit new_user_session_url
  #   fill_in I18n.t('devise.sessions.new.placeholders.email'), with: username
  #   fill_in I18n.t('devise.sessions.new.placeholders.password'), with: password
  #   click_button I18n.t('devise.sessions.new.commit')
  # end
end

World(AuthenticationHelpers)