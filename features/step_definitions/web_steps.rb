Then(/^I should be on the root page$/) do
  expect(current_url).to eql(root_url)
end
