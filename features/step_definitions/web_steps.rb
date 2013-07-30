Then(/^I should be on the root page$/) do
  expect(current_path).to eql(root_path)
end

Then(/^show me the page$/) do
  save_and_open_page
end
