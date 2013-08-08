Given(/^I do not have an account yet$/) do
  UserRepository.all.each(&:destroy)
end

Given(/^I am logged out$/) do
  visit '/sessions/destroy'
end

When(/^I sign in with GitHub account$/) do
  visit '/sessions/new'
  click_link_or_button I18n.t('devise.sessions.new.sign_in_with_github')
end
