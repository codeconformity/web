Given(/^I do not have an account yet$/) do
  User.destroy_all(nickname: 'johndoe')
end

Given(/^I am logged out$/) do
  visit sign_out_path
end

When(/^I sign in with GitHub account$/) do
  visit sign_in_path
  click_link_or_button I18n.t('devise.sessions.new.sign_in_with_github')
end
